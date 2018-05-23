#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

function print_message() {
  echo "Command usage"
  echo -e "-h\t\tHelp me please!"
  echo -e "Custom run:\n"
  echo -e "-a\t\t[apps references]:\n"
  echo -e "App's number references:\n"
  echo -e "\t0. Run ${bold}Admin CRM${normal} in port \t${bold}3000${normal}\n"
  echo -e "\t1. Run ${bold}Estetix${normal}in port \t${bold}3001${normal}\n"
  echo -e "\t2. Run ${bold}Implants${normal}in port \t${bold}3004${normal}\n"
  echo -e "\t3. Run ${bold}Crisalix${normal}in port \t${bold}3005${normal}\n"
  echo -e "\t4. Run ${bold}SSO${normal}in port \t${bold}3007${normal}\n"
  echo -e "\t5. Run ${bold}My${normal}in port \t${bold}3008${normal}\n"
  echo -e "\t6. Run ${bold}Stats${normal}in port \t${bold}3021${normal}\n"
  echo -e "\ne.g. crun -a 0 1 4\n"
  echo -e "\nThis will runs apps Admin, Estetix and SSO"
}

# if [[ $# -eq 0 ]]
# then
#   print_message
#   exit 1
# fi
#
# if [[ $1 -eq '-h' ]]
# then
#   print_message
#   exit 0
# fi
repo_path=$(head -n 1 /Users/mauri/Scripts/repo_path)
echo "[MySQL] - Starting ..."
#TODO: Check status before start
mysql.server start &> /dev/null

echo "[Redis] - Starting ..."
#TODO: Check status before start
redis-server /usr/local/etc/redis.conf &> /dev/null &

echo -e "Running apps ...\n\n\n\n"
echo -e "- [admin] rails s -p 3000\n"
cd ${repo_path}admin
bundle exec rails s -p 3000 &> /dev/null &

echo -e "- [SSO] rails s -p 3007\n"
cd ${repo_path}SSO
bundle exec rails s -p 3007 &> /dev/null &

echo -e "- [crisalix] rails s -p 3005\n"
cd ${repo_path}crisalix
bundle exec rails s -p 3005 &> /dev/null &

echo -e "- [estetix] rails s -p 3001\n"
cd ${repo_path}estetix
bundle exec rails s -p 3001 &> /dev/null &

echo -e "- [implants_catalogue] rails s -p 3004\n"
cd ${repo_path}implants_catalogue
bundle exec rails s -p 3004 &> /dev/null &

echo -e "- [my] rails s -p 3008\n"
cd ${repo_path}my
bundle exec rails s -p 3008 &> /dev/null &

echo -e "- [stats] rackup -s Puma -p 3021\n"
cd ${repo_path}stats
bundle exec rackup -s Puma -p 3021 -o 0.0.0.0 &> /dev/null &

echo -e "- [core-app] rackup -s Puma -p 3017\n"
cd ${repo_path}core-app
bundle exec rackup -s Puma -p 3017 -o 0.0.0.0 &> /dev/null &

# 501  5662 ttys001    0:01.03 puma 3.3.0 (tcp://localhost:3021) [stats]
# TODO: [3000, 3001, 3002, ...]
#       for elem in array do
#          ps grep $elem ...
sleep 2
echo "All apps running"
echo -e "- Rails:\n$(ps -u $USER | grep ttys | grep -e rails -e puma -e rackup | grep -v grep  | tr -s " " | cut -d " " -f 3,7-)"
echo -e "- Redis:\n$(ps -u $USER | grep redis | grep -v grep| cut -f 5,12- -d ' ')"
echo -e "- MySQL:\n$(mysql.server status)"

exit 0
