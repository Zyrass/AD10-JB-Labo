
# Toute la configuration Vagrant est définie ci-dessous. Le "2" dans Vagrant.configure
# configure la version de configuration (nous prenons en charge les anciens styles pour
# la compatibilité arrière). Veuillez ne pas le modifier à moins de savoir ce que vous faites.
#Vagrant.configure("2") do |config|
  # Les options de configuration les plus courantes sont documentées et commentées ci-dessous.
  # Pour une référence complète, veuillez consulter la documentation en ligne sur
  # https://docs.vagrantup.com.

  # Désactive la vérification automatique des mises à jour des boxes. Si vous désactivez cela,
  # les boxes ne seront vérifiées que lorsque l'utilisateur exécute
  # `vagrant box outdated`. Ce n'est pas recommandé.
  # config.vm.box_check_update = false

  # Crée une correspondance de port redirigé qui permet d'accéder à un port spécifique
  # de la machine à partir d'un port sur la machine hôte. Dans l'exemple ci-dessous,
  # l'accès à "localhost:8080" permettra d'accéder au port 80 de la machine invitée.
  # NOTE : Cela permettra un accès public au port ouvert.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Crée une correspondance de port redirigé qui permet d'accéder à un port spécifique
  # de la machine à partir d'un port sur la machine hôte et n'autorise l'accès
  # que via 127.0.0.1 pour désactiver l'accès public.
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Crée un réseau privé qui permet un accès uniquement par l'hôte à la machine
  # en utilisant une adresse IP spécifique.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Crée un réseau public, généralement associé à un réseau en mode pont.
  # Les réseaux en mode pont font apparaître la machine comme un autre périphérique physique
  # sur votre réseau.
  # config.vm.network "public_network"

  # Partage un dossier supplémentaire avec la machine invitée. Le premier argument est
  # le chemin sur l'hôte vers le dossier réel. Le deuxième argument est
  # le chemin sur la machine invitée pour monter le dossier. Et le troisième
  # argument optionnel est un ensemble d'options non requises.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Désactive le partage par défaut du répertoire de code actuel. Cela permet
  # une isolation améliorée entre la machine Vagrant et votre hôte
  # en veillant à ce que votre Vagrantfile ne soit pas accessible par la machine Vagrant.
  # Si vous utilisez cela, vous voudrez peut-être activer des sous-dossiers partagés supplémentaires
  # comme indiqué ci-dessus.
  # config.vm.synced_folder ".", "/vagrant", disabled: true

  # Configuration spécifique au fournisseur afin de pouvoir ajuster divers
  # paramètres spécifiques au fournisseur pour Vagrant. Ces options exposent
  # des options spécifiques au fournisseur. Exemple pour VirtualBox :
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Affiche l'interface graphique de VirtualBox lors du démarrage de la machine
  #   vb.gui = true
  #
  #   # Personnalise la quantité de mémoire allouée à la VM :
  #   vb.memory = "1024"
  # end
  #
  # Consultez la documentation du fournisseur que vous utilisez pour plus
  # d'informations sur les options disponibles.

  # Activation de la provision avec un script shell. Des provisionneurs supplémentaires tels que
  # Ansible, Chef, Docker, Puppet et Salt sont également disponibles. Veuillez consulter la
  # documentation pour plus d'informations sur leur syntaxe et leur utilisation spécifiques.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
#end
