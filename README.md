# Front office dev environment setup
This repository set up the Frontoffice services using docker-compose
and allows configuring over .env file

### Make the dev shell script executable
```
chmod 777 dev
```

### Setup your .env
Create file .env and copy following properties and modify appropriately
```
DOCKER_LOOPBACK_ADDRESS_HOST=172.17.0.1    #host.docker.internal  on Windows / Mac

PROXY_PORT=8081

DB_HOST=db
DB_PORT=3306
DB_DATABASE=sp
DB_USER=sp
DB_PASSWORD=sp123
DB_PASSWORD_ROOT=sp123_root

BE_NPEFILING_HOST=api
BE_NPEFILING_PORT=3001
BE_NPEFILING_STORAGE_PATH=tmp/spfo/attachments

HTTP_PROXY=http://proxy.internal.epo.org:8080
HTTPS_PROXY=http://proxy.internal.epo.org:8080
http_proxy=http://proxy.internal.epo.org:8080
https_proxy=http://proxy.internal.epo.org:8080

# services which should be started by docker-compose
# if not defined then all services will start
APPS=db,web,proxy,authorization-mock-service,submission-service

```


### Start services
Starts all services 
```
.dev stack-start
```

### Stop services 
Stops all services
```
.dev stack-start
```

### Clear services 
Execute systemm prune and clear all spfo container and images
```
.dev stack-clear
```


### Execute Yarn commands
Executes yarn commands with proxy enabled or disabled depending on your .env config 
```
.dev yarn 'command' #eg. install --force
```
