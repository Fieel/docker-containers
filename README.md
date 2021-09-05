
# docker-containers

List of docker containers I use in my synology NAS & more

## Manage this repo with git

Git should be installed in the NAS

|command|description|
|---|---|
| git clone "_github url_" | clone this repo |
| git fetch && git pull | fetch new changes |
| git reset --hard | reset local changes (getting rid of local sensitive variables before pulling) |

## images notes

Otherwise i forget

|image|url|notes|
|---|---|---|
| linuxserver/plex | <https://hub.docker.com/r/linuxserver/plex> | <ul><li> _PLEX_CLAIM_ environment variable is custom and generated before install</li><li>network_mode: host is required for plex</li><li>_devices - /dev/dri:/dev/dri_ is required for transcoding through the Intel CPU</li></ul> |
| linuxserver/tautulli | <https://hub.docker.com/r/linuxserver/tautulli> | |
