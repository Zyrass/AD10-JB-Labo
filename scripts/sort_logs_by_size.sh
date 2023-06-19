#!/bin/bash

# Effacement du terminal complet
clear

# Affichage du répertoire selectionné
echo -e "\n \033[1;32m=========================================================================\033[0m"
echo -e "  Folder utilisé: \033[1;31m/var/log\033[0m"
echo -e " \033[1;32m=========================================================================\033[0m\n"

# se placer dans le répertoire /var/log
cd /var/log

# Afficher la liste des fichiers triés par taille
ls -lSh
