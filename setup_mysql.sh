#!/bin/bash

# Installer Docker
sudo apt-get install -y docker.io

# Télécharger l'image Docker de MySQL
sudo docker pull mysql/mysql-server:5.6

# Exécuter et démarrer le conteneur MySQL
sudo docker run -itd --name mysql mysql/mysql-server:5.6

# Afficher les journaux Docker du conteneur MySQL
sudo docker logs mysql

# Entrer dans le shell du conteneur MySQL
sudo docker exec -it mysql bash

# Se connecter à MySQL en utilisant le client mysql
mysql -uroot -p
