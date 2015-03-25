#!/bin/bash

#############################################################
# Update packages
#############################################################
sudo apt-get update; 

#############################################################
# Update repositories
#############################################################
sudo add-apt-repository ppa:gnome3-team/gnome3
sudo add-apt-repository ppa:gnome3-team/gnome3-staging
sudo add-apt-repository ppa:webupd8team/atom
sudo apt-get update
sudo apt-get dist-upgrade

#############################################################
# Install Gnome
#############################################################
sudo apt-get -y install ubuntu-gnome-desktop

#############################################################
# Install Git
#############################################################
sudo apt-get -y install git

#############################################################
# Install Atom Editor
#############################################################
sudo apt-get -y install atom

#############################################################
# Install Travelling BOSH
#############################################################
curl -s https://raw.githubusercontent.com/cloudfoundry-community/traveling-bosh/master/scripts/installer | bash

#############################################################
# Install CloudFoundry CLI
#############################################################
URL="https://cli.run.pivotal.io/stable?release=debian64&version=6.10.0&source=github-rel";
FILE=`mktemp`;

# Downloading CloudFoundry CLI
wget "$URL" -qO $FILE

# Installing CF-CLI Deb file
sudo dpkg -i $FILE;

# Removing CF-CLI Deb file
rm $FILE
