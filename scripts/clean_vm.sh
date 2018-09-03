!/usr/bin/env bash

# TODO clean the vm if you want to share it
# remove dhcp leases
rm -f /var/lib/dhcp*/dhcpd.leases~
rm -f /var/lib/dhcp*/*.leases

# no udev statuc rules for network interfaces
rm -f /etc/udev/rules.d/z25_persistent-net.rules
rm -f /etc/udev/rules.d/z45_persistent-net-generator.rules

# del vagrant user and providing&provisionning folder on the vm
userdel -r vagrant
rm -rf /vagrant

# clean logs
# TODO

# echo "clean history"
find / -name .bash_history -delete
history -c

# TODO create image
#TODO image au format .vmk
