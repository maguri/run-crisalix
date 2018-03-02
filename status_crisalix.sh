#!/bin/bash

echo "Apps and DBs statuses"
echo -e "- Rails:\n$(ps -u $USER | grep ttys | grep -e rails -e puma -e rackup | grep -v grep | cut -f 5,13- -d ' ')"
echo -e "- Redis:\n$(ps -u $USER | grep redis | grep -v grep| cut -f 5,12- -d ' ')"
echo -e "- MySQL:\n$(mysql.server status)"
exit 0
