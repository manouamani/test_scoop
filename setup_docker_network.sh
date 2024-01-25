# Étape 1 : Créer un réseau bridge
docker network create --driver=bridge sqoop-mysql

# Étape 2 : Ajouter les deux conteneurs au réseau créé
docker network connect sqoop-mysql mysql
docker network connect sqoop-mysql hadoop-sqoop

# Étape 3 : Vérifier la description du réseau pour voir si les conteneurs ont été ajoutés
docker network inspect sqoop-mysql

