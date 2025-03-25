#!/bin/bash

echo "##########################"
date
sudo ls /var/run/httpd/httpd.pid &> /dev/null

if [ $? -eq 0 ]
then
  echo "the process is running"
else
  echo "the process is not running"
  echo "restartingt the httpd service"
  sudo systemctl start httpd &> /dev/null
  if [ $? -eq 0 ]
  then
    echo "the process restarted successfully"
  else
    echo "the process failed to start, contact support team"
  fi
fi
echo "##########################"
