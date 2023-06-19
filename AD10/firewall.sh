#!/bin/bash

# Met à jour les paquets du système
# Installe les paquets 'ufw' (firewall) et 'haproxy' (load balancer)
sudo apt-get update
sudo apt-get install -y ufw haproxy

# Configure le pare-feu ufw pour bloquer les connexions entrantes par défaut
sudo ufw default deny incoming

# Autorise les connexions sortantes par défaut
sudo ufw default allow outgoing

# Autorise les connexions entrantes sur les ports 22, 80 et 443
sudo ufw allow 22
sudo ufw allow 80
sudo ufw allow 443

# Active le pare-feu ufw
sudo ufw enable

# Redémarre HAProxy pour appliquer la configuration
sudo systemctl restart haproxy

echo -e "\n\033[1:35m Le FIREWALL a bien été configuré avec succès :D\033[0m\n"
