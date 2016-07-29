#! /bin/bash

#skeleton script for installing boradcom Drivers in Alpine

# Ref Links:
#https://wiki.alpinelinux.org/wiki/Abuild_and_Helpers
#https://wiki.alpinelinux.org/wiki/Connecting_to_a_wireless_access_point
#http://forum.alpinelinux.org/forum/networking/broadcom-wireless-package-installation
#git://git.alpinelinux.org/aports


#done as root

default_user= "mblanc"
my-user=read -p "Please enter a new username [$default_user]:"  my-user

adduser my-user 

# Add user to Abuild and Wheel Groups

#modify /etc/sudoers, uncomment %wheel



#done as user
clear

sudo apk add alpine-sdk

git clone git://git.alpinelinux.org/aports

cd ~/aports/non-free/b43-firmware

abuild-keygen -a -i

#accept defaults

abuild -r

cd ~/packages/non-free/x86_64

sudo apk add b43-firmware*


#Try sudo apk add b43-fwcutter
#https://pkgs.alpinelinux.org/package/v3.3/main/x86/b43-fwcutter
#http://linuxwireless.org/en/users/Drivers/b43/