#!/bin/bash

# MYSQL WEB CONFIGURATION PARAMETERS
bootstrap="mySQLBootrap.sh"
gitRepo="linux-scripts-apps-mysql.git"

#SET UP INSTALLATION DIRECTORY
pkg=mySQL
scriptType="apps"
parentDir="/tmp/scripts/$scriptType/"
installDir="$parentDir/$pkg"

mySqlAdmin=admin
mySqlOwner=mySql
mySqlGroup=mySql
mySqlHome=/opt/mySql
mySqlLog=/var/log/mySql

pkgOwner=ec2-user

echo Setting External Args
echo These Arguments Overwrite Default Argument Settings
for arg in "$@"; do
  echo setArgs EXECUTING: export $arg
  export $arg
done
