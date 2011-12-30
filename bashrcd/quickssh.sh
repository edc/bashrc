function ss {
cat << EOF
[1] cix-service dev (usemlx7339)
[2] cix-service prod (usemlx1401)
[3] cix-app dev (usemlx7329)
[4] cix-app prod (usemlx1329)
[5] skywalker
[6] lnx-caoyi3
EOF
read -n 1 -p '> ' CHOICE
echo
case $CHOICE in
	1)
		echo "connecting you to cix-servicesd"
		ssh cix-servicesd
		;;
	2)
		echo "connecting you to cix-services"
		ssh cix-services
		;;
	3)
		echo "connecting you to cix-app:dev"
		ssh dev-spade
		;;
	4)
		echo "connecting you to cix-app:prod"
		ssh pharm2d
		;;
	5)
		echo "skywalker"
		ssh skywalker
		;;
	6)
		echo "lnx"
		ssh lnx-caoyi3
		;;
	*)
		echo "bad choice"
		;;
esac
}
