#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

function print_message() {
  echo "Command usage"
  echo -e "${bold}-all${normal}\tStop all the apps"
  echo -e "${bold}-h${normal}\tHelp me please!"
  echo -e "Custom stop:"
  echo -e "App's number references:\n"
  echo -e "\t0. Stop ${bold}Admin CRM${normal} in port \t${bold}3000${normal}\n"
  echo -e "\t1. Stop ${bold}Estetix${normal} in port \t${bold}3001${normal}\n"
  echo -e "\t3. Stop ${bold}Crisalix${normal} in port \t${bold}3005${normal}\n"
  echo -e "\t4. Stop ${bold}SSO${normal} in port \t\t${bold}3007${normal}\n"
  echo -e "\t5. Stop ${bold}My${normal} in port \t\t${bold}3008${normal}\n"
  echo -e "\t6. Stop ${bold}Stats${normal} in port \t\t${bold}3021${normal}\n"
  echo -e "\ne.g. cstop -a crisalix_admin\n"
  echo -e "\nThis will stop apps Admin"
}

# if [[ $1 -eq 0 ]]
# then
#   print_message
#   exit 1
# fi
#
# if [[ $1 == '-h' ]]
# then
#   print_message
#   exit 0
# fi
#
# if [[ $1 == '-all' ]]
# then

  echo -e "- Stopping Crisalix apps:"
  for pid in $( ps -u $USER | grep -e rails -e puma -e rackup | grep -v grep | cut -d' ' -f5)
  do
    ps $pid &>/dev/null && kill -9 $pid &&  echo -e "\n[OK] - $(ps $pid)"
  done

  echo -e "\n- Stopping MySQL \n"
  mysql.server status | grep running && mysql.server stop

  echo -e "\n- Stopping Redis \n"
  kill -9 $(ps -u $USER | grep redis | grep -v grep | cut -d' ' -f5) &&  echo "[OK]"

  exit 0
#
# fi
#
# if [[ $1 -eq '-a' ]]
# then
#   echo "="
#   echo "$@"
# fi
