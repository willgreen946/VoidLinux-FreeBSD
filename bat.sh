while true
do
	xsetroot -name "$(date && acpiconf -i 0 | grep %)"
	sleep 120
done
