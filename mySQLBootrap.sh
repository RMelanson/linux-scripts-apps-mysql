#!/bin/bash
sqlCurrDir=$PWD

# Ensure script is running under root
bootstrap=$webCurrDir/mySQLBootrap.sh
if [ "$EUID" -ne 0 ]
then
   sudo -n true 2/dev/null 2>&1
   passwordRequired=$?

   if [ "$passwordRequired" == "1" ]; then
       echo "Please run as root or under user with sudo access sudo"
   else
       sudo chmod +x $bootstrap
       sudo $bootstrap
   fi
   return 1
fi

#Initial update of server
yum update -y

#Installation of Required Programs
#--Git
#--MySQL
yum install git -y
yum install mysql-server -y

# SETUP ENVIRONMENT AND PARAMETERS
. ./env/setEnv.sh

if [ -f ~/.ssh/gitHub.key ]; then
   clone="git clone git@github.com:jasonantao/"
else
   clone="git clone https://github.com/jasonantao/"
fi

# Clone $pkg
echo Executing $clone$gitRepo $installDir
$clone$gitRepo $installDir

# Setup $pkg
cd $installDir

# MAKE ALL SHELL SCRIPTS EXECUTABLE TO ROOT ONLY
find . -name "*.sh" -exec chmod 700 {} \;

# Setup Project
./setup.sh 2>&1| tee setup.log

cd $bootstrapDir
