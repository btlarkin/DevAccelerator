#!/usr/bin/env bash
# infractl: Infrastructure Control Script for Unified IT Environment
# This script manages the deployment, scaling, and maintenance of the
# core "vanilla" IT infrastructure using Infrastructure as Code (IaC) principles.
# It is designed to be run from the Local Development VM, which is bootstrapped
# by devctl.

set -euo pipefail
trap 'echo "Error in infractl at line $LINENO"; exit 1' ERR

# --- Configuration Variables ---
# These can be overridden by environment variables or command-line flags
# VAULT_ROOT is assumed to be set by devctl's user setup.
VAULT_ROOT="${VAULT_ROOT:-$HOME/opt/DevAccelerator}"
LOG_DIR="${LOG_DIR:-$HOME/.local/state/infractl}"
# Path to your main infrastructure repository
# This is where your Terraform, Ansible, Kubernetes manifests for the base infra reside.
INFRA_REPO_PATH="${INFRA_REPO_PATH:-$HOME/projects/vanilla_project_infra}"
INFRA_REPO_URL="${INFRA_REPO_URL:-https://github.com/btlarkin/vanilla_project_infra.git}" # IMPORTANT: Change this to your actual repo URL!
PROJECTS_BASE_DIR="${PROJECTS_BASE_DIR:-$HOME/projects}" # Where application projects live

mkdir -p "$LOG_DIR"

# --- Helper Functions ---

usage() {
  cat <<EOF
Usage: infractl <command> [<args>]

Commands:
  bootstrap infra-tools  Install/verify core infrastructure tools (Terraform, Ansible, etc.).
  init-infra             Clones the vanilla_project_infra repository and initializes Terraform.
  deploy <project_name>  Deploys the vanilla infrastructure, optionally customized for a project.
  destroy <project_name> Destroys the infrastructure associated with a specific project.
  stow <project_name>    Suspends/pauses VMs for a specific project to save resources.
  unfurl <project_name>  Resumes VMs for a specific project.
  repack <project_name>  Exports VM images or bundles project-specific artifacts for archival.
  backup <project_name>  Triggers backup routines for project-specific data/configs.
  status <project_name>  Shows the status of a deployed project's infrastructure.
  update <project_name>  Applies incremental updates to a deployed project's infrastructure. (Conceptual)
  scale <project_name>   Scales specific components of a deployed project's infrastructure. (Conceptual)

Global Flags:
  --dry-run            Print commands without executing
  --force              Force operations (e.g., overwrite existing configs)
  -h|--help            Show this message

EOF
  exit 1
}

# Dry-run wrapper
run() {
  if [[ "${DRY_RUN:-false}" == true ]]; then
    echo "[DRY] $*"
  else
    "$@"
  fi
}

# Log function
log_info() {
  echo "[$(date +'%F %T')] INFO: $*" | tee -a "$LOG_DIR/infractl.log"
}

log_error() {
  echo "[$(date +'%F %T')] ERROR: $*" | tee -a "$LOG_DIR/infractl.log" >&2
  exit 1
}

# Parse global flags
while [[ $# -gt 0 ]]; do
  case $1 in
    --dry-run) DRY_RUN=true; shift ;;
    --force)   FORCE=true; shift ;;
    -h|--help) usage ;;
    *) break ;;
  esac
done

# --- Commands ---

# devctl_bootstrap_infra_tools: Install/verify core infrastructure tools
# This function assumes devctl is available to install packages.
infractl_bootstrap_infra_tools() {
  log_info "Starting infrastructure tool bootstrap..."

  # Define common infrastructure tools needed on the Local Development VM
  # These would typically be installed via pacman/yay on Arch Linux (using devctl's apps feature)
  local infra_tools_packages=(
    "terraform"           # For IaC with VirtualBox, cloud providers
    "ansible"             # For configuration management
    "virtualbox"          # VirtualBox application
    "virtualbox-host-modules-arch" # Kernel modules for VirtualBox (Arch-specific)
    "virtualbox-ext-pack" # Extension pack for USB, RDP etc.
    "vagrant"             # Optional, but useful for quick VM setups
    "packer"              # Optional, for building custom VM images
    "aws-cli"             # AWS Command Line Interface
    "azure-cli"           # Azure Command Line Interface
    "kubectl"             # Kubernetes command-line tool
    "helm"                # Kubernetes package manager
    "docker"              # Docker client/daemon
    "docker-compose"      # Docker Compose
    "git"                 # Ensure Git is installed for cloning repos
    # Add any Ethereum-specific tools here, e.g.,
    # "geth"                # Go Ethereum client
    # "solidity"            # Solidity compiler (solc)
    # "nodejs"              # For Hardhat/Truffle
    # "npm"                 # Node package manager
  )

  log_info "Checking for and installing required infrastructure tools..."
  for pkg in "${infra_tools_packages[@]}"; do
    if ! command -v "$pkg" &>/dev/null && ! pacman -Qs "$pkg" &>/dev/null; then
      log_info "Installing $pkg via devctl bootstrap apps..."
      # This assumes you have an 'infra-tools' group in your apps.csv for devctl
      # Or you could directly call pacman -S --noconfirm --needed "$pkg"
      # For simplicity, we'll assume pacman/yay is available and use it directly.
      run sudo pacman -S --noconfirm --needed "$pkg" || log_error "Failed to install $pkg."
    else
      log_info "$pkg is already installed."
    fi
  done

  # Ensure VirtualBox kernel modules are loaded and service is running
  if command -v vboxdrv &>/dev/null; then
    log_info "Ensuring VirtualBox kernel modules are loaded..."
    run sudo modprobe vboxdrv || log_error "Failed to load vboxdrv kernel module."
    log_info "Starting/enabling vboxautostart-service..."
    run sudo systemctl enable --now vboxautostart-service || log_error "Failed to enable vboxautostart-service."
  fi

  log_info "Infrastructure tool bootstrap complete."
}

# init_infra: Clones the vanilla_project_infra repository and initializes Terraform
infractl_init_infra() {
  log_info "Initializing vanilla infrastructure repository..."

  if [[ ! -d "$INFRA_REPO_PATH" ]]; then
    log_info "Cloning vanilla_project_infra from $INFRA_REPO_URL to $INFRA_REPO_PATH..."
    run git clone "$INFRA_REPO_URL" "$INFRA_REPO_PATH" || log_error "Failed to clone vanilla_project_infra."
  else
    log_info "vanilla_project_infra already exists. Pulling latest changes..."
    pushd "$INFRA_REPO_PATH" >/dev/null
      run git pull || log_error "Failed to pull latest changes for vanilla_project_infra."
    popd >/dev/null
  fi

  log_info "Initializing Terraform modules in $INFRA_REPO_PATH/terraform..."
  pushd "$INFRA_REPO_PATH/terraform" >/dev/null
    run terraform init || log_error "Terraform initialization failed."
  popd >/dev/null

  log_info "Vanilla infrastructure repository initialized."
}

# deploy: Deploys the vanilla infrastructure, optionally customized for a project.
# Arguments: <project_name>
infractl_deploy() {
  local project_name="$1"
  if [[ -z "$project_name" ]]; then
    log_error "Usage: infractl deploy <project_name>"
  fi

  log_info "Deploying infrastructure for project: $project_name..."

  local project_infra_dir="$PROJECTS_BASE_DIR/$project_name-infra"
  local vanilla_tf_dir="$INFRA_REPO_PATH/terraform"

  # Create a project-specific infrastructure directory if it doesn't exist
  # This is where project-specific overrides/variables would live.
  if [[ ! -d "$project_infra_dir" ]]; then
    log_info "Creating project-specific infra directory: $project_infra_dir"
    run mkdir -p "$project_infra_dir"
    # Optionally, copy a base project-specific template or a symlink to vanilla_tf_dir
    # For simplicity here, we'll assume project-specific configs are handled via var files
    # or by running terraform from the vanilla_tf_dir with specific -var-file.
  fi

  # Navigate to the core Terraform directory for applying the plan
  pushd "$vanilla_tf_dir" >/dev/null

    log_info "Generating Terraform plan for $project_name..."
    # This assumes you use a terraform.tfvars file or pass variables via -var
    # For project-specific customization, you might have a file like:
    # "$project_infra_dir/terraform.tfvars" or pass variables directly.
    # Example: run terraform plan -var="project_name=$project_name" -out="$project_name.tfplan"
    run terraform plan -out="$project_name.tfplan" || log_error "Terraform plan failed."

    log_info "Applying Terraform plan for $project_name..."
    run terraform apply "$project_name.tfplan" || log_error "Terraform apply failed."

  popd >/dev/null

  log_info "Infrastructure deployment for $project_name complete."

  # After Terraform, run Ansible playbooks for configuration management
  # This could be conditional based on what terraform deployed
  log_info "Running Ansible playbooks for $project_name configuration..."
  local ansible_playbook="$INFRA_REPO_PATH/ansible/playbooks/deploy_all_services.yml" # Example playbook
  if [[ -f "$ansible_playbook" ]]; then
    # This assumes your Ansible inventory is dynamically generated by Terraform or predefined
    run ansible-playbook -i "$INFRA_REPO_PATH/ansible/inventories/dynamic_inventory.py" "$ansible_playbook" \
      -e "project_name=$project_name" || log_error "Ansible playbook execution failed."
  else
    log_info "No main Ansible playbook found at $ansible_playbook. Skipping Ansible configuration."
  fi

  log_info "Full infrastructure deployment and configuration for $project_name finished."
}

# destroy: Destroys the infrastructure associated with a specific project.
# Arguments: <project_name>
infractl_destroy() {
  local project_name="$1"
  if [[ -z "$project_name" ]]; then
    log_error "Usage: infractl destroy <project_name>"
  fi

  log_info "Destroying infrastructure for project: $project_name..."
  local vanilla_tf_dir="$INFRA_REPO_PATH/terraform"

  pushd "$vanilla_tf_dir" >/dev/null
    run terraform destroy -var="project_name=$project_name" || log_error "Terraform destroy failed."
  popd >/dev/null

  log_info "Infrastructure for $project_name destroyed."
}

# stow: Suspends/pauses VMs for a specific project to save resources.
# Arguments: <project_name>
infractl_stow() {
  local project_name="$1"
  if [[ -z "$project_name" ]]; then
    log_error "Usage: infractl stow <project_name>"
  fi

  log_info "Suspending VMs for project: $project_name..."
  # This would typically involve querying VirtualBox for VMs related to the project_name
  # and then running `VBoxManage controlvm <VM_NAME> savestate`
  # This requires careful scripting to identify VMs belonging to a project.
  # For a simple example, let's assume a naming convention like "project_name-vm-1"
  local vms_to_stow=$(VBoxManage list vms | grep "$project_name-" | awk '{print $1}' | tr -d '"')
  if [[ -z "$vms_to_stow" ]]; then
    log_info "No VMs found for project $project_name to stow."
    return 0
  fi

  for vm in $vms_to_stow; do
    if VBoxManage showvminfo "$vm" --machinereadable | grep -q "VMState=\"running\""; then
      log_info "Suspending VM: $vm"
      run VBoxManage controlvm "$vm" savestate || log_error "Failed to suspend $vm."
    else
      log_info "VM $vm is not running, skipping suspend."
    fi
  done
  log_info "VM suspension for $project_name complete."
}

# unfurl: Resumes VMs for a specific project.
# Arguments: <project_name>
infractl_unfurl() {
  local project_name="$1"
  if [[ -z "$project_name" ]]; then
    log_error "Usage: infractl unfurl <project_name>"
  fi

  log_info "Resuming VMs for project: $project_name..."
  local vms_to_unfurl=$(VBoxManage list vms | grep "$project_name-" | awk '{print $1}' | tr -d '"')
  if [[ -z "$vms_to_unfurl" ]]; then
    log_info "No VMs found for project $project_name to unfurl."
    return 0
  fi

  for vm in $vms_to_unfurl; do
    if VBoxManage showvminfo "$vm" --machinereadable | grep -q "VMState=\"saved\""; then
      log_info "Starting VM: $vm"
      run VBoxManage startvm "$vm" --type headless || log_error "Failed to start $vm."
    else
      log_info "VM $vm is not in saved state, skipping resume."
    fi
  done
  log_info "VM resumption for $project_name complete."
}

# repack: Exports VM images or bundles project-specific artifacts for archival.
# Arguments: <project_name>
infractl_repack() {
  local project_name="$1"
  if [[ -z "$project_name" ]]; then
    log_error "Usage: infractl repack <project_name>"
  fi

  log_info "Repacking/exporting artifacts for project: $project_name..."
  local output_dir="$HOME/infractl_repacks/$project_name"
  run mkdir -p "$output_dir"

  # Example: Exporting VirtualBox VMs
  # This would require identifying which VMs belong to the project.
  # A more robust solution would be to use Terraform outputs to get VM IDs/names.
  local vms_to_export=$(VBoxManage list vms | grep "$project_name-" | awk '{print $1}' | tr -d '"')
  if [[ -z "$vms_to_export" ]]; then
    log_info "No VMs found for project $project_name to export."
  else
    for vm in $vms_to_export; do
      log_info "Exporting VM $vm to $output_dir/$vm.ova..."
      run VBoxManage export "$vm" --output "$output_dir/$vm.ova" || log_error "Failed to export $vm."
    done
  fi

  # Example: Bundling project-specific configuration files
  log_info "Bundling project-specific configuration files from $PROJECTS_BASE_DIR/$project_name-infra..."
  if [[ -d "$PROJECTS_BASE_DIR/$project_name-infra" ]]; then
    run tar -czvf "$output_dir/$project_name-infra-configs.tar.gz" -C "$PROJECTS_BASE_DIR" "$project_name-infra" \
      || log_error "Failed to bundle project configs."
  fi

  log_info "Repacking for $project_name complete. Artifacts in $output_dir."
}

# backup: Triggers backup routines for project-specific data/configs.
# Arguments: <project_name>
infractl_backup() {
  local project_name="$1"
  if [[ -z "$project_name" ]]; then
    log_error "Usage: infractl backup <project_name>"
  fi

  log_info "Triggering backup for project: $project_name..."
  local backup_target_dir="$HOME/infractl_backups/$project_name/$(date +'%Y%m%d%H%M%S')"
  run mkdir -p "$backup_target_dir"

  # This is highly dependent on what data needs backing up.
  # Examples:
  # 1. Database backups (e.g., PostgreSQL dumps from a VM)
  # 2. Application data volumes (e.g., from Kubernetes persistent volumes)
  # 3. Configuration files (e.g., /etc/nginx, /etc/kubernetes configs from VMs)
  # 4. Smart contract state if not fully on-chain (less common for public chains)

  log_info "Performing database backups (example)..."
  # This would involve SSHing into relevant VMs and running database dump commands
  # e.g., run ssh user@db-vm "pg_dump -Fc mydb > /tmp/mydb.bak"
  # Then scp the backup file back to the Local Development VM.
  log_info "Database backup logic would go here."

  log_info "Backing up project-specific infrastructure configurations..."
  if [[ -d "$PROJECTS_BASE_DIR/$project_name-infra" ]]; then
    run cp -r "$PROJECTS_BASE_DIR/$project_name-infra" "$backup_target_dir/configs" \
      || log_error "Failed to backup project-specific configs."
  fi

  log_info "Backup for $project_name complete. Backups in $backup_target_dir."
}

# status: Shows the status of a deployed project's infrastructure.
# Arguments: <project_name>
infractl_status() {
  local project_name="$1"
  if [[ -z "$project_name" ]]; then
    log_error "Usage: infractl status <project_name>"
  fi

  log_info "Showing status for project: $project_name..."

  log_info "--- Virtual Machine Status ---"
  VBoxManage list vms --long | grep -E "Name:|State:" | grep -A1 "$project_name-" || log_info "No VMs found for $project_name."

  log_info "--- Kubernetes Cluster Status (if applicable) ---"
  # This assumes kubectl is configured to talk to the project's cluster.
  # You might need to set KUBECONFIG or similar based on project.
  if command -v kubectl &>/dev/null; then
    run kubectl get nodes -o wide --context "$project_name-cluster" || log_info "Kubernetes context not found or cluster not reachable for $project_name."
    run kubectl get pods -A --context "$project_name-cluster"
  else
    log_info "kubectl not found. Cannot check Kubernetes status."
  fi

  log_info "--- Running Docker Containers (Local Dev VM) ---"
  run docker ps --filter "name=$project_name" || log_info "No local Docker containers found for $project_name."

  log_info "--- Terraform State Summary ---"
  pushd "$INFRA_REPO_PATH/terraform" >/dev/null
    run terraform state list | grep "$project_name" || log_info "No Terraform resources found for $project_name in state."
  popd >/dev/null

  log_info "Status check for $project_name complete."
}

# update: Applies incremental updates to a deployed project's infrastructure.
# This command is conceptual and would involve more nuanced logic than a full deploy.
# Arguments: <project_name>
infractl_update() {
  local project_name="$1"
  if [[ -z "$project_name" ]]; then
    log_error "Usage: infractl update <project_name>"
  fi

  log_info "Applying incremental updates to infrastructure for project: $project_name..."
  log_info "This command is conceptual and would involve specific Terraform/Ansible/Kubernetes update logic."
  log_info "For now, consider 'destroy' and 'deploy' for major changes."

  # Example conceptual update steps:
  # 1. Pull latest changes for vanilla_project_infra
  #    pushd "$INFRA_REPO_PATH" >/dev/null && run git pull && popd >/dev/null
  # 2. Run terraform apply with specific targets or variables for update
  #    pushd "$INFRA_REPO_PATH/terraform" >/dev/null
  #    run terraform apply -target="module.some_component" -var="project_name=$project_name"
  #    popd >/dev/null
  # 3. Run specific Ansible playbooks for configuration updates
  #    run ansible-playbook -i "$INFRA_REPO_PATH/ansible/inventories/dynamic_inventory.py" \
  #      "$INFRA_REPO_PATH/ansible/playbooks/update_web_servers.yml" -e "project_name=$project_name"
  # 4. Apply Kubernetes manifest changes
  #    run kubectl apply -f "$INFRA_REPO_PATH/kubernetes/project_specific_updates/$project_name.yaml"

  log_info "Incremental update for $project_name finished (conceptual)."
}

# scale: Scales specific components of a deployed project's infrastructure.
# This command is conceptual and would involve specific logic for scaling.
# Arguments: <project_name> <component_name> <new_count>
infractl_scale() {
  local project_name="$1"
  local component_name="$2"
  local new_count="$3"

  if [[ -z "$project_name" || -z "$component_name" || -z "$new_count" ]]; then
    log_error "Usage: infractl scale <project_name> <component_name> <new_count>"
  fi

  log_info "Scaling component '$component_name' to '$new_count' for project: $project_name..."
  log_info "This command is conceptual and would involve specific scaling logic (Terraform, Ansible, kubectl)."

  # Example conceptual scaling steps:
  # Case 1: Scaling VMs (e.g., adding more web servers) via Terraform
  #    pushd "$INFRA_REPO_PATH/terraform" >/dev/null
  #    run terraform apply -var="project_name=$project_name" -var="${component_name}_count=${new_count}"
  #    popd >/dev/null
  # Case 2: Scaling Kubernetes deployments
  #    run kubectl scale deployment/${component_name} --replicas=${new_count} -n ${project_name}-namespace

  log_info "Scaling operation for $project_name finished (conceptual)."
}


# --- Dispatch ---
cmd="$1"; shift || usage
case "$cmd" in
  bootstrap)
    sub="$1"; shift || usage
    case "$sub" in
      infra-tools) infractl_bootstrap_infra_tools "$@" ;;
      *)           usage ;;
    esac
    ;;
  init-infra)
    infractl_init_infra "$@" ;;
  deploy)
    infractl_deploy "$@" ;;Deploy the Evolved Infrastructure: When you run infractl deploy <project_name> for a new application project, or even if you destroy and then deploy an existing one (though for ongoing projects, you might have infractl update or infractl scale commands later), it will always deploy the latest version of your vanilla_project_infra blueprint.
  destroy)
    infractl_destroy "$@" ;;
  stow)
    infractl_stow "$@" ;;
  unfurl)
    infractl_unfurl "$@" ;;
  repack)
    infractl_repack "$@" ;;
  backup)
    infractl_backup "$@" ;;
  status)
    infractl_status "$@" ;;
  # update)
  #   infractl_update "$@" ;; # Uncomment when ready to implement
  # scale)
  #   infractl_scale "$@" ;;  # Uncomment when ready to implement
  *) usage ;;
esac

