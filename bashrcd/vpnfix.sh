function vpn {
	INT=`ifconfig | grep utun | awk -F: '{print $1}'`
	echo "tunneling through $INT"
	sudo route change -net default 192.168.1.1
	sudo route add -net 165.140.0.0 -interface $INT
	sudo route add -net 160.61.0.0 -interface $INT
	sudo route add -net 160.62.0.0 -interface $INT
	sudo route add -net 147.167.0.0 -interface $INT
	sudo route add -net 170.237.0.0 -interface $INT
}

