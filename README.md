# docker-couchpotato
This is a [couchpotato](https://couchpota.to) docker container.

The easiest way to use this is probably a fig file:
```
couchpotato:
  image: stono/couchpotato 
  volumes:
    - ./storage:/storage
  ports:
    - "5050:5050"
```
From there you can start it with `sudo fig up -d` and connect to it on:
  - http://127.0.0.1:5050

Or if you don't want to use fig, this will do the job:
```
sudo docker run -d && \
  -v "/home/karl/development/git/github/docker-couchpotato/storage:/storage" && \
  -p "5050:5050" stono/nzbget
```

## Storage
All config / data gets written to /storage/nzbget on the first "fig up", so if you mount in that volume to somewhere on your system, all your configuration will be preserved through docker container updates.

You could mount in your own, already existing config directory if you like.

## Info 
This is part of a set, all based of the same images, all desgined to eventually piece together.
  - [stono/sonarr](https://github.com/Stono/docker-sonarr) Sonarr in a Docker container
  - [stono/nzbget](https://github.com/Stono/docker-nzbget) NzbGet in a Docker container
  - [stono/couchpotato](https://github.com/Stono/docker-couchpotato) Couchpotato in a docker container
