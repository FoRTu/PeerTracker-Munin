#!/bin/bash

############## CONFIGGURATION // CONFIGURTACION #############
#
# Mysql Database host // Equipo en el que esta MySQL.
HOST="localhost"
#
# MySQL Database name // Nombre de la base de datos en MySQL.
DATABASE="peertrackerDB"
#
# MySQL username to connect to the database // Usuario de MySQL para conectar a la base de datos.
USER="user_peertracker"
#
# MySQL user password  // Contraseña del usuario de MySQL.
PASSWD="password"
#
######## End of Configuration // Finde configuracion ######### 

# Get Peers, Seeders, Leechers and Torrents from DB // Obtener Peers, Seeders, Leechers y Torrents desde la bases de datos.
peers=`mysql -h $HOST -u $USER -p$PASSWD -D $DATABASE -e "SELECT count(ip) from pt_peers" --skip-column-name`
seeders=`mysql -h $HOST -u $USER -p$PASSWD -D $DATABASE -e "SELECT count(state) FROM pt_peers WHERE state=1" --skip-column-name`
leechers=`mysql -h $HOST -u $USER -p$PASSWD -D $DATABASE -e "SELECT count(state) FROM pt_peers WHERE state=0" --skip-column-name`
torrents=`mysql -h $HOST -u $USER -p$PASSWD -D $DATABASE -e "SELECT count(DISTINCT info_hash) FROM pt_peers" --skip-column-name`


case $1 in
   config)

# Configure // Configuracion.


echo graph_title Bittorrent Tracker
echo graph_args --base 1000 -l 0
echo graph_vlabel Bittorrent Tracker Stats
echo graph_category network
echo graph_infoBittorrent Tracker Stats.
echo Peers.label Peers
echo Peers.info Seeders + Leechers. Conected all clients.
echo Seeders.label Seeders
echo Seeders.info A computer that has a complete copy of the torrent.
echo Leechers.label Leecher
echo Leechers.info "A computer that doesn't have the complete file".
echo Torrents.label Torrents
echo Torrents.info Number of Torrents tracking.

# End of Configuration // Fin de la Configuracion.

        exit 0;;
esac


# Output data // Datos

echo "Peers.value $peers"
echo "Seeders.value $seeders"
echo "Leechers.value $leechers"
echo "Torrents.value $torrents"

# End of data // Datos
