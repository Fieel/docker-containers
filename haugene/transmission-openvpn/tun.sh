#!/bin/sh

#
# File necessario a transmission-openvpn e dato che nel NAS
# non c'è di default ho dovuto crearlo schedulando questo script
# ad ogni riavvio, così che sia raggiungibile in /dev/net/tun
# https://haugene.github.io/docker-transmission-openvpn/tips-tricks/#running_it_on_a_nas
#

# Create the necessary file structure for /dev/net/tun
if ( [ ! -c /dev/net/tun ] ); then
    if ( [ ! -d /dev/net ] ); then
	        mkdir -m 755 /dev/net
			    fi
				    mknod /dev/net/tun c 10 200
					fi

					# Load the tun module if not already loaded
					if ( !(lsmod | grep -q "^tun\s") ); then
					    insmod /lib/modules/tun.ko
						fi
