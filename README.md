PeerTracker-Munin
=================

![](https://github.com/FoRTu/PeerTracker-Munin/raw/master/screenshot.png)

This is a **plugin for [Munin][1]** with which we can monitor the bittorrent tracker **[PeerTracker][2]**.

**PeerTracker** is written in **PHP** and database can be hosted on **MySQL** or **SQLite**. This plugin is written for those configurations with the **MySQL** database. I used the command line to extract the required information from the database. You could say that this plugin is written in **bash-scripting**.



Install
--------
¿?


------------------------------------------------


PeerTracker-Munin
=================

![](https://github.com/FoRTu/PeerTracker-Munin/raw/master/screenshot.png)

Esto es un **plugin para [Munin][1]** con el cual podremos monitorizar el tracker bittorrent **[PeerTracker][2]**.

**PeerTracker** esta escrito en **PHP** y su base de datos puede estar alojada en **MySQL** o **SQLite**. Este plugin esta escrito para aquellas configuraciones que tengan la base de datos alojada en **MySQL**. He utilizado la línea de comandos para extraer la información necesaria desde la base de datos. Podría decirse que este plugin esta escrito en **bash-Scripting**.


Instalar
--------

La instalación es simple, solamente tenéis que **copiar** el archivo **PeerTracker.sh** a la carpeta de plugins de Munin. Normalmente la carpeta es esta, **/etc/munin/plugins**, y una vez copiando solo hace falta reiniciar el demonio de Munin.



[1]: http://munin-monitoring.org/
[2]: http://code.google.com/p/peertracker/