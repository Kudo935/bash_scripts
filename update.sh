#! /bin/bash
echo "Please enter Password"
sudo apt update -y
echo "Please make a selection"
i="Upgrade"
j="Full-Upgrade"
k="Dist-Upgrade"
l="Exit"
optionen="$i $j $k $l"
select option in $optionen; do
	if [ $option = $i ]; then
		sudo apt upgrade -y
		sudo apt autoremove -y
		sudo apt autoclean -y
		echo "Upgrade complete"
		echo "Exit now"
		exit
	elif [ $option = $j ]; then
		sudo apt full-upgrade -y
		sudo apt autoremove -y
		sudo apt autoclean -y
		echo "Upgrade complete"
		echo "Exit now"
		exit
	elif [ $option = $k ]; then
		sudo apt dist-upgrade -y
		sudo apt autoremove -y
		sudo apt autoclean -y
		echo "Upgrade complete"
		echo "Exit now"
		exit
	elif [ $option = $l ]; then
		sudo apt autoremove -y
		sudo apt autoclean -y
		echo "Exit now"
		exit
	else
		echo "Error"
	fi
done

