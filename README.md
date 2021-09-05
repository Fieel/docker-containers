
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
|[linuxserver/tautulli](https://hub.docker.com/r/linuxserver/tautulli)|tautulli|<li>Login with plex account</li>|
|[linuxserver/jackett](https://hub.docker.com/r/linuxserver/jackett)|jackett|<li>config folder creates a subfolder so i pointed it at /volume1/docker and not /volume1/docker/jackett</li>|
|[linuxserver/nzbhydra2](https://hub.docker.com/r/linuxserver/nzbhydra2)|nzbhydra2| config mai usata, bo |
## Update images

From linuxserver docs:

##### Via Docker Compose

* Update all images: `docker-compose pull`
  * or update a single image: `docker-compose pull imageName`
* Let compose update all containers as necessary: `docker-compose up -d`
  * or update a single container: `docker-compose up -d imageName`
* You can also remove the old dangling images: `docker image prune`