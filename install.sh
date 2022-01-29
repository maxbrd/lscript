#! /bin/bash
#début Jaune 
	YS="\e[1;33m"
#couleur de fin
	CE="\e[0m"
	
while true
do	
clear
echo "Please choose a language"

echo -e ""$YS" 1"$CE") English"
echo -e ""$YS" 2"$CE") Français"
echo -e ""$YS" 0"$CE") Exit"
echo -e "Choose: "
sleep 1
read -e choose
clear
if [[ "$choose" = "1" ]]
then
	printf '\033]2;INSTALLER\a'
	echo -e "Press \e[1;33many key\e[0m to install the script..."
	read -n 1
	clear
	apt-get -y install gnome-terminal
	clear
	DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	if [[ "$DIR" != "/root/lscript" ]]
	then
		echo -e "You didn't follow the github's simple install instructions.I will try to do it for you..."
		sleep 4
		if [[ -d /root/lscript ]]
		then
			rm -r /root/lscript
		fi
		mkdir /root/lscript
		cp -r "$DIR"/* /root/lscript
		chmod +x /root/lscript/install.sh
		gnome-terminal -- "bash /root/lscript/install.sh"
	fi
	echo -e "Installing lscript..."
	sleep 1
	echo -e "Fixing permissions"
	sleep 2
	chmod +x /root/lscript/lh1
	chmod +x /root/lscript/lh2
	chmod +x /root/lscript/lh3
	chmod +x /root/lscript/lh31
	chmod +x /root/lscript/l
	chmod +x /root/lscript/lh4
	chmod +x /root/lscript/lh41
	chmod +x /root/lscript/lh21
	chmod +x /root/lscript/lh42
	chmod +x /root/lscript/lh43
	chmod +x /root/lscript/ls/l131.sh
	chmod +x /root/lscript/ls/l132.sh
	chmod +x /root/lscript/ls/l133.sh
	chmod +x /root/lscript/uninstall.sh
	clear
	echo -e "Copying script to /bin/lscript"
	sleep 1
	mkdir /bin/lscript
	cd /root/lscript
	cp /root/lscript/l /bin/lscript
	cp /root/lscript/lh1 /bin/lscript
	cp /root/lscript/lh2 /bin/lscript
	cp /root/lscript/lh3 /bin/lscript
	cp /root/lscript/lh31 /bin/lscript
	cp /root/lscript/lh4 /bin/lscript
	cp /root/lscript/lh41 /bin/lscript
	cp /root/lscript/lh21 /bin/lscript
	cp /root/lscript/lh42 /bin/lscript
	cp /root/lscript/lh43 /bin/lscript
	cp /root/lscript/TheLazyScript.desktop /root/Desktop
	cp /root/lscript/TheLazyScript.desktop /root/Bureau
	clear
	#required for gui
	apt-get -y install ncurses-dev
	clear
	if [[ ! -d /root/handshakes ]]
	then
		mkdir /root/handshakes
		echo -e "Made /root/handshake directory"
	else
		echo -e "/root/handshakes directory detected.Good."
	fi
	if [[ ! -d /root/wordlists ]]
	then
		mkdir /root/wordlists
		echo -e "Made /root/wordlists directory"
	else
		echo -e "/root/wordlists directory detected.Good."
	fi
	while true
	do
	clear
	echo -e "Are you \e[1;33mu\e[0mpdating or \e[1;33mi\e[0mnstalling the script?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
	echo -e "Only use 'i' for the first time."
	read UORI
	if [[ "$UORI" = "u" ]]
	then 
		clear
		echo -e "Type 'changelog' to see what's new on this version"
		sleep 3
		break
	elif [[ "$UORI" = "i" ]]
	then
		clear
		BASHCHECK=$(cat ~/.bashrc | grep "bin/lscript")
		if [[ "$BASHCHECK" != "" ]]
		then
			echo -e "I SAID USE i ONLY ONE TIME..........."
			sleep 3
		fi
		echo -e "Adding lscript to PATH so you can access it from anywhere"
		sleep 1
		export PATH=/bin/lscript:$PATH
		sleep 1
		echo "export PATH=/bin/lscript:$PATH" >> ~/.bashrc
		sleep 1
		clear
		break
	fi
	done
	clear
	echo -e "DONE"
	sleep 1
	clear
	echo -e "Open a NEW terminal and type 'l' to launch the script"
	sleep  4
	gnome-terminal -- l
	exit
elif [[ "$choose" = "2" ]]
then
		printf '\033]2;INSTALLEUR\a'
	echo -e "Appuyez sur "\e[1;33"une touche"\e[0m" pour installer le script..."
	read -n 1
	clear
	apt-get -y install gnome-terminal
	clear
	DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
	if [[ "$DIR" != "/root/lscript" ]]
	then
		echo -e "Vous n'avez pas suivi les instructions d'installation simples de GitHub, je vais essayer de le faire pour vous..."
		sleep 4
		if [[ -d /root/lscript ]]
		then
			rm -r /root/lscript
		fi
		mkdir /root/lscript
		cp -r "$DIR"/* /root/lscript
		chmod +x /root/lscript/install.sh
		gnome-terminal -- "bash /root/lscript/install.sh"
	fi
	echo -e "Installation de lscript..."
	sleep 1
	echo -e "Mise en place des permissions"
	sleep 2
	chmod +x /root/lscript/lscript-FR/lh1
	chmod +x /root/lscript/lscript-FR/lh2
	chmod +x /root/lscript/lscript-FR/lh3
	chmod +x /root/lscript/lscript-FR/lh31
	chmod +x /root/lscript/lscript-FR/l
	chmod +x /root/lscript/lscript-FR/lh4
	chmod +x /root/lscript/lscript-FR/lh41
	chmod +x /root/lscript/lscript-FR/lh21
	chmod +x /root/lscript/lscript-FR/lh42
	chmod +x /root/lscript/lscript-FR/lh43
	chmod +x /root/lscript/ls/l131.sh
	chmod +x /root/lscript/ls/l132.sh
	chmod +x /root/lscript/ls/l133.sh
	chmod +x /root/lscript/lscript-FR/uninstall.sh
	clear
	echo -e "Copie du script vers /bin/lscript"
	sleep 1
	mkdir /bin/lscript
	cd /root/lscript
	cp /root/lscript/lscript-FR/l /bin/lscript
	cp /root/lscript/lscript-FR/lh1 /bin/lscript
	cp /root/lscript/lscript-FR/lh2 /bin/lscript
	cp /root/lscript/lscript-FR/lh3 /bin/lscript
	cp /root/lscript/lscript-FR/lh31 /bin/lscript
	cp /root/lscript/lscript-FR/lh4 /bin/lscript
	cp /root/lscript/lscript-FR/lh41 /bin/lscript
	cp /root/lscript/lscript-FR/lh21 /bin/lscript
	cp /root/lscript/lscript-FR/lh42 /bin/lscript
	cp /root/lscript/lscript-FR/lh43 /bin/lscript
	cp /root/lscript/TheLazyScript.desktop /root/Desktop
	cp /root/lscript/TheLazyScript.desktop /root/Bureau
	clear
	#requis pour gui
	apt-get -y install ncurses-dev
	clear
	if [[ ! -d /root/handshakes ]]
	then
		mkdir /root/handshakes
		echo -e "Répertoire /root/handshake créé"
	else
		echo -e "Répertoire /root/handshakes détecté.Parfait."
	fi
	if [[ ! -d /root/wordlists ]]
	then
		mkdir /root/wordlists
		echo -e "Répertoire /root/wordlists créé"
	else
		echo -e "Répertoire /root/wordlists directory détecté.Parfait."
	fi
	while true
	do
	clear
	echo -e "Voulez-vous \e[1;33mu\e[0mpdate ou \e[1;33mi\e[0mnstaller le script?(\e[1;33mu\e[0m/\e[1;33mi\e[0m): "
	echo -e "Utiliser 'i' seulement la première fois."
	read UORI
	if [[ "$UORI" = "u" ]]
	then 
		clear
		echo -e "Tapez 'changelog' pour voir les nouveautés de cette version"
		sleep 3
		break
	elif [[ "$UORI" = "i" ]]
	then
		clear
		BASHCHECK=$(cat ~/.bashrc | grep "bin/lscript")
		if [[ "$BASHCHECK" != "" ]]
		then
			echo -e "J'AI DIS D'UTILISER I SEULEMENT LA PREMIERE FOIS..........."
			sleep 3
		fi
		echo -e "Ajout de lscript à PATH pour pouvoir y accéder de n'importe où"
		sleep 1
		export PATH=/bin/lscript:$PATH
		sleep 1
		echo "export PATH=/bin/lscript:$PATH" >> ~/.bashrc
		sleep 1
		clear
		break
	fi
	done
	clear
	echo -e "TERMINE"
	sleep 1
	clear
	echo -e "Ouvrez un nouveau Terminal et tapez 'l' pour lancer le script"
	sleep  4
	gnome-terminal -- l
	exit
elif [[ "$choose" = "0" ]]
then	
	exit
else
	clear
	continue	
clear
fi
done


