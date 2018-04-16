#!/bin/bash -eux

echo "***** Installing Virtualbox Guest Utils"
apt -y install dkms

mount -o loop ~/VBoxGuestAdditions.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt

rm -rf ~/VBoxGuestAdditions.iso