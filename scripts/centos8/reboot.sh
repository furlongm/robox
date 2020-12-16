#!/bin/bash

printf "Updates have been applied.\n"
printf "Rebooting onto the newly installed kernel of popcorn. Yummy.\n"

# If the network interface doesn't properly shutdown, the provisioner may hang, 
# so we stop the interface manually.  
#systemctl stop network

# Schedule a reboot, but give the computer time to cleanly shutdown the 
# network interface first.
shutdown --reboot --no-wall +1

# To prevent the next provisioning script from launching during the reboot
# process a sleep directive is issued blocking the return of this script.
# sleep 300
