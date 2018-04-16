#!/bin/bash -eux

#Update
apt update && apt -y upgrade

# install curl to fix broken wget while retrieving content from secured sites
apt -y install curl

# install general purpose packages
# install bash-completion
echo "***** Installing bash-completion"
apt -y install bash-completion

# install ccze
echo "***** Installing ccze"
apt -y install ccze

# install git
echo "***** Installing git"
apt -y install git

# install rsync
echo "***** Installing rsync"
apt -y install rsync

# install screen
echo "***** Installing screen"
apt -y install screen

# install tcpdump
echo "***** Installing tcpdump"
apt -y install tcpdump

# install vim
echo "***** Installing vim"
apt -y install vim

# install wget
echo "***** Installing wget"
apt -y install wget