#!/usr/bin/env bash
# weekly_log.sh: Compile a summary of your week's Git activity

START=${1:-$(git log --since='7 days ago' --pretty=format:'%h')}
echo "# Weekly Git Summary"
echo
git log --since='7 days ago' --pretty=format:'- %h: %s (%an, %cd)" --date=short

