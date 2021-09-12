
# docker-containers

List of docker containers I use in my synology NAS & more

## Manage this repo with git & docker-compose

Git & docker should be installed in the NAS

|command|description|
|---|---|
|`git clone "repoUrl"`|clone this repo|
|`git fetch && git pull`|fetch new changes|
|`git reset --hard`| reset local changes (getting rid of local sensitive variables before pulling)|
|`docker-compose down`| stop a container|
|`docker-compose up -d`|start a container, -d for detatched (in background)|
|`docker-compose pull`|pull updated containers|

## images notes

Otherwise i forget

|image repo|image name|notes|
|---|---|---|
|[linuxserver/plex](https://hub.docker.com/r/linuxserver/plex)|plex|<ul><li> _PLEX_CLAIM_ environment variable is custom and generated before install</li><li>network_mode: host is required for plex</li><li>_devices - /dev/dri:/dev/dri_ is required for transcoding through the Intel CPU</li></ul>|
|[linuxserver/radarr](https://hub.docker.com/r/linuxserver/radarr)|radarr||
|[linuxserver/sonarr](https://hub.docker.com/r/linuxserver/sonarr)|sonarr||
|[linuxserver/lidarr](https://hub.docker.com/r/linuxserver/lidarr)|lidarr||
|[linuxserver/bazarr](https://hub.docker.com/r/linuxserver/bazarr)|bazarr||
|[linuxserver/tautulli](https://hub.docker.com/r/linuxserver/tautulli)|tautulli|<li>Login with plex account on startup</li>|
|[linuxserver/sabnzbd](https://hub.docker.com/r/linuxserver/sabnzbd)|sabnzbd||
|[haugene/transmission-openvpn](https://hub.docker.com/r/haugene/transmission-openvpn)|transmission-openvpn| check the subfolder for more infos, also need to update stock vpn psw and username after pulling |
|[linuxserver/jackett](https://hub.docker.com/r/linuxserver/jackett)|jackett|
|[linuxserver/nzbhydra2](https://hub.docker.com/r/linuxserver/nzbhydra2)|nzbhydra2|  |
|[linuxserver/mariadb](https://hub.docker.com/r/linuxserver/mariadb)|mariadb|General purpose use db, MYSQL_ROOT_PASSWORD to be set after pulling|
|[linuxserver/phpmyadmin](https://hub.docker.com/r/linuxserver/phpmyadmin)|phpmyadmin|Had to update the config file config.inc.php adding a line at the end of the file to avoid file permission problems|
|[netdata/netdata](https://hub.docker.com/r/netdata/netdata)|netdata|[docs](https://learn.netdata.cloud/docs/agent/packaging/docker)|

## Update images

From linuxserver docs:

##### Via Docker Compose

* Update all images: `docker-compose pull`
  * or update a single image: `docker-compose pull imageName`
* Let compose update all containers as necessary: `docker-compose up -d`
  * or update a single container: `docker-compose up -d imageName`
* You can also remove the old dangling images: `docker image prune`