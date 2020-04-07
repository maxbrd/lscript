#! /bin/bash
function nounistall
{
	echo -e "Je savais que tu étais toujours paresseux :D :D "
	sleep 2
	echo -e "Si vous souhaitez ajouter une fonctionnalité, contactez-moi sur FB"
	sleep 2
	echo -e " "
	echo -e "Aris"
	sleep 1
	exit
}
echo -e "Voulez-vous vraiment désinstaller le script Lazy de votre système?(y/n)(Entrer=non): "
read CHUN
if [ "$CHUN" = "y" ]
then
	echo -e "Si vous avez des problèmes, contactez-moi d'abord."
	echo -e "Tu veux toujours te débarrasser de moi?(y/n)(Entrer=non): "
	read CHCHUN
	if [ "$CHCHUN" = "y" ]
	then
		echo -e "Ok, désinstallation de tout ce qui a à voir avec lscript sur votre système"
		sleep 4
		rm -r /bin/lscript
		echo -e "Fait."
		sleep 1
		echo -e "Vous devez cependant supprimer manuellement le dossier lscript de votre répertoire /root/ ..."
		sleep 2
		echo -e "Appuyez sur une touche pour quitter..."
		read
		exit
	else
		nounistall
	fi
else
	nounistall
fi
