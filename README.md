# docker-qgis
Docker images for QGIS


docker run -p 8083:80 -e QGIS_FCGI_MIN_PROCESSES=2 -e QGIS_FCGI_MAX_PROCESSES=2 sogis/qgis-server-base:2.18