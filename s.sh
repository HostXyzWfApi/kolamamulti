#!/bin/bash

function display {
    echo -e "\033c"
    echo "
    ==========================================================================
                  _  __          _                             
                 | |/ /   ___   | |   __ _   _ __ ___     __ _ 
                 | ' /   / _ \  | |  / _` | | '_ ` _ \   / _` |
                 | . \  | (_) | | | | (_| | | | | | | | | (_| |
                 |_|\_\  \___/  |_|  \__,_| |_| |_| |_|  \__,_|
                 
    ==========================================================================
    "  
}

FILE=installed.txt

if [ ! -f "$FILE" ]
then
    display
sleep 5
echo "
  $(tput setaf 3)Which egg are you gonna use?
  1) Node.js
  "
read -r n

case $n in
 1)
  echo "$(tput setaf 3)Starting Download please wait"
  
  curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  
  sudo apt-get install -y nodejs

  *) 
    echo "Error 404"
    exit
  ;;
esac  
