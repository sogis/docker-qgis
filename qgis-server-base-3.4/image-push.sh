hub_user=$1
hub_pass=$2

docker login -u $hub_user -p $hub_pass
docker push sogis/qgis-server-base:3.4
docker push sogis/qgis-server-base:latest
