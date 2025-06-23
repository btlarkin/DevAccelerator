#!/usr/bin/env python3
"""
generate_report.py: Read frontmatter from a note and produce a Lite Report markdown
Usage: python3 generate_report.py note.md > Report.md
"""
import sys, yaml, os

def parse_frontmatter(path):
    with open(path) as f:
        lines = f.read().splitlines()
    if lines[0] != '---': return {}
    end = lines[1:].index('---') + 1
    fm = yaml.safe_load('\n'.join(lines[1:end]))
    return fm

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: generate_report.py note.md")
        sys.exit(1)
    fm = parse_frontmatter(sys.argv[1])
    report = f"# Lite Report: {fm.get('title','')}\n\n"
    report += f"- Date: {fm.get('date','')}\n"
    report += f"- Phase: {fm.get('phase','')}\n\n"
    report += "## Recommendations\n\n- \n"
    print(report)

