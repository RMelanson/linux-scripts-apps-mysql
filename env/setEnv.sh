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
