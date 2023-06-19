#!/bin/bash

#Effacement de la fenêtre à l'écran sans perdre le contenu de la fenêtre précédente
clear -x

folder=$1

# Contrôle du répertoire passé en paramètre du script
# par défaut si aucun répertoire n'est passé, le répertoire racine "/" sera sélectionné
cd ${folder:-"/"}

# Affichage du répertoire selectionné
echo -e "\n \033[1;32m=========================================================================\033[0m"
echo -e "  Folder utilisé: \033[1;31m$folder\033[0m"
echo -e " \033[1;32m=========================================================================\033[0m\n"

# Afficher la liste des fichiers triés par taille
ls -lSh
