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

All config / data gets written to /storage/couchpotato
