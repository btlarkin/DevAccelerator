#!/bin/bash

mkdir -p "/home/$(whoami)/Documents"
mkdir -p "/home/$(whoami)/Downloads"

# Function able to install any package from the AUR (needs the package names as arguments).
aur_install() {
    curl -O "https://aur.archlinux.org/cgit/aur.git/snapshot/$1.tar.gz" \
    && tar -xvf "$1.tar.gz" \
    && cd "$1" \
    && makepkg --noconfirm -si \
    && cd - \
    && rm -rf "$1" "$1.tar.gz"
}

aur_check() {
    qm=$(pacman -Qm | awk '{print $1}')
    for arg in "$@"
    do
        if [[ "$qm" != *"$arg"* ]]; then
            yay --noconfirm -S "$arg" &>> /tmp/aur_install \
                || aur_install "$arg" &>> /tmp/aur_install
        fi
    done
}

cd /tmp
dialog --infobox "Installing \"Yay\", an AUR helper..." 10 60
aur_check yay

count=$(wc -l < /tmp/aur_queue)
c=0

cat /tmp/aur_queue | while read -r line
do
    c=$(( "$c" + 1 ))
    dialog --infobox \
    "AUR install - Downloading and installing program $c out of $count: $line..." \
    10 60
    aur_check "$line"
done

DOTFILES="/home/$(whoami)/dotfiles"
if [ ! -d "$DOTFILES" ]; then
    git clone https://github.com/btlarkin/dotfiles.git \
    "$DOTFILES" >/dev/null
fi

source "$DOTFILES/zsh/.zshenv"
cd "$DOTFILES" && bash install.sh

# ─── DevAccelerator Vault & Bootstrap ───
echo "🌱 Cloning DevAccelerator and bootstrapping…"
mkdir -p "$HOME/workspace"
git clone https://github.com/btlarkin/DevAccelerator.git "$HOME/workspace/DevAccelerator"
cd "$HOME/workspace/DevAccelerator"
chmod +x bootstrap.sh
./bootstrap.sh

# ─── Make project scripts globally available ───
chmod +x scripts/new_project.sh scripts/launch_project.sh
ln -sf "$PWD/scripts/new_project.sh" /usr/local/bin/new_project
ln -sf "$PWD/scripts/launch_project.sh" /usr/local/bin/launch_project

