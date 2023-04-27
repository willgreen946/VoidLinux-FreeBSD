# Set up questions 
printf "\nWhat is your username? "
read username

printf "\nWhat is the current time? [DD:MM:YYYY hour:minute:second] \n[s] for skip "
read time
case $time
	s|S) printf "skipping" ;; 
	*) exec date-s "$time" && hwclock --systohc ;;

printf "Hi $username this will install dotfiles and system settings for void linux\nDo you wish to continue? [y/N] "
read yn0
case $yn0 in
	y|Y) exec xbps-install -Su  ;;
	*) exit  
