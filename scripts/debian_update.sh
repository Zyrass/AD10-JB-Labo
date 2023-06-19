#!/bin/bash

# Affichage d'un message simple
echo -e "\n \033[1;32m=========================================================================\033[0m"
echo -e "  \033[1;31mMAINTENANCE - UPDATE\033[0m"
echo -e " \033[1;32m=========================================================================\033[0m\n"

echo -e "  \033[1;34m1 - Mise à jour du système debian\033[0m\n"

if test -e /var/log/apt/updated.log; then
    echo "Le fichier updated.log existe déjà."
else
    sudo touch /var/log/apt/updated.log
    echo "Le fichier updated.log a été créé dans le répertoire /var/log/apt"
fi

sudo sh -c "apt-get update && apt-get dist-upgrade -y && apt autoremove -y >> /var/log/apt/updated.log"
