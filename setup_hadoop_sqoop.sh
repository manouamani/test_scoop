#!/bin/bash

# Étape 1 : Cloner le référentiel GitHub
git clone https://github.com/Mouez2019/hadoop-sqoop-pig.git
cd hadoop-sqoop-pig

# Étape 2 : Construire l'image Hadoop-sqoop
docker build -t Hadoop-sqoop .

# Étape 3 : Exécuter le conteneur Hadoop-sqoop
docker run -itd --name hadoop-sqoop Hadoop-sqoop

# Étape 4 : Exécuter le shell dans le conteneur Hadoop-sqoop
docker exec -it hadoop-sqoop bash


