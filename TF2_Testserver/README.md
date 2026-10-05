# OppossumNetworGames
> TF2-Server of the Network (currently contains: Testserver)

---

## Overview

- DockerCompose
- Sourcepawn

---

## Documentations
*commands and code in order of usage*

### Setup Gameserver

nothing special, installation of docker and creation of the Testserver

### 05/10/2026 
### Setup Webserver

added a plugin and saw it didnt work. Gave rights to the docker:

```bash
chmod -R 777 addons/ sourcemod/
```

restartes server and looked at logs

```bash
docker-compose logs -f tf2
```

compiled plugin directly on the server:

```bash
./spcomp64 OppossumPlugins/testplugin.sp -o OppossumPlugins/compiled/testplugin.smx
```

--> The solution was to use another folder (not sourcemod but addons)