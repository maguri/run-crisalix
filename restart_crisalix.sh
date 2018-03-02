#!/bin/bash

function print_message() {
  echo "Command usage"
  echo "This script helps you to restart an app and run it in foreground in your shell"
  echo -e "-h\t\tHelp me please!"
  echo -e "Custom run:\n"
  echo -e "-a\t\t[app]:\n"
  echo -e "Apps and services:\n"
  echo -e "\t${bold}Num.\t references\t Description${normal}"
  echo -e "\t0.\tadmin\tRun ${bold}Admin CRM${normal} in port \t${bold}3000${normal}\n"
  echo -e "\t1.\testetix \tRun ${bold}Estetix${normal}in port \t${bold}3001${normal}\n"
  echo -e "\t2.\tbrands \tRun ${bold}Implants${normal}in port \t${bold}3004${normal}\n"
  echo -e "\t3.\tcrisalix \tRun ${bold}Crisalix${normal}in port \t${bold}3005${normal}\n"
  echo -e "\t4.\tsso \tRun ${bold}SSO${normal}in port \t${bold}3007${normal}\n"
  echo -e "\t5.\tmy \tRun ${bold}My${normal}in port \t${bold}3008${normal}\n"
  echo -e "\t6.\tstatus \tRun ${bold}Status${normal}in port \t${bold}30021${normal}\n"
  echo -e "\ne.g. creset -a admin\n"
  echo -e "\nThis will restart the Admin(0) app"
}

function restart(port) {
  echo $( ps -u $USER | grep "rails s" | grep $port grep -v grep)
}

if [[ $# -eq 0 ]]
then
  print_message
  exit 1
fi

if [[ $1 -eq '-h' ]]
then
  print_message
  exit 0
fi
# 
# echo -e "- Restarting Crisalix apps:"
# for pid in $( ps -u $USER | grep "rails s" | grep -v grep | cut -d' ' -f5)
# do
#   ps $pid &>/dev/null && kill -9 $pid &&  echo -e "\n[OK] - $(ps $pid)"
# done
#
# echo -e "\n- Stopping MySQL \n"
# mysql.server status | grep running && mysql.server stop
#
# echo -e "\n- Stopping Redis \n"
# kill -9 $(ps -u $USER | grep redis | grep -v grep | cut -d' ' -f5) &&  echo "[OK]"

exit 0
