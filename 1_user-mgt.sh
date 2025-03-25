#!/bin/bash

user="dave dan ben"

echo "############################"
for usr in $user
do
  echo "creating user $usr"
  sudo useradd $usr

  echo "adding password for the user $usr"
  echo "123" | sudo passwd $usr --stdin
  sleep 2
done 
echo "##############################"
