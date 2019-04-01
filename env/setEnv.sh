#!/bin/bash

# MYSQL WEB CONFIGURATION PARAMETERS
pkg=mySQL
bootstrap="mySQLBootrap.sh"

gitRepo="linux-scripts-apps-mysql.git"
installDir="/tmp/scripts/apps/$pkg"
mySqlAdmin=admin
mySqlOwner=mySql
mySqlGroup=mySql
mySqlHome=/opt/mySql
mySqlLog=/var/log/mySql
