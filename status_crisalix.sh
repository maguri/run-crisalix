#!/bin/bash

echo "Apps and DBs statuses"
echo -e "- Rails:\n$(ps -u $USER | grep ttys | grep -e rails -e puma -e rackup | grep -v grep | tr -s " " | cut -d " " -f 3,7-)"
echo -e "- Redis:\n$(ps -u $USER | grep redis | grep -v grep  | tr -s " " | cut -d " " -f 3,7-)"
echo -e "- MySQL:\n$(mysql.server status)"
exit 0
