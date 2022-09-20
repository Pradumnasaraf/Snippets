- `docker run hello-image` - run the container, hello-world is image here.

- `docker images` - Check all the images.

- `docker pull <image name>` - downlaod image

  - Eg: `docker pull ubuntu:16.04`

- `docker run -it <os-name>` - run interactive environment

  - Eg: `docker run -it ubuntu:16.04`

- `docker ps` - check the current running containers.

OR

- `docker container ls` - check the current running containers.

- `docker exec -it <container ID> bash` - Attach a bash shell to a container with the container ID.

- `docker stop <container ID>` - to stop a container

- `docker start <container ID>` - to start the stopped a container

- `docker run --name <name> <image-name>`- give a name to the conatiner.

- `docker run -d -p <Hot port:container port> --name <name> <image-name>`- chnage name of current running container.

- `docker ps -a` - Show all the stopped container.

- `docker rm <container ID>` - remove the container.

- To check the running processes inside a container

```
docker top <container-name/id>
```

- To check stats of running container

```
docker container stats
```

- `docker logs <container ID>` - logs of the container.
        - ``docker logs --since 5s <container ID>`  - logs of last 5s

- `docker container prune -f` - delete all the stoped container.


- `docker run -d <image-name>` - run the container in the background in the dattached mode.

- `doc run <image-name> <command>` run the command in the container terminal
    - `doc run ubuntu:16.04 echo hey`

- `doc rmi <image-name> -f` - remove the image

- `doc run -d -p 8080:80 nginx` - port forwarding (Biding port of host and container port )

- `docker commit -m "message" <container-id> <name:tag>` - create a new image 
    - `docker commit -m "Added names.txt" d161deca74d2 name-ubuntu:1.01`

We can run by `doc run -it name-ubuntu:1.01

- `docker images -q` - Returns all the image ID's

- `docker rmi $(docker images -q) ` - Remove all the images at once

- `docker inspect  <image>` - inspect and get details about that image.

- Creating our Own image and container.

```
Step 1 - create Dockerfile
Step 2 - docker build -t myimage:1.0 <location> (-t for tag)
Step 3 - docker run
```

- `docker login` - 

- `docker network ls` - list of network


- To sync our local machine chnages with help of Docker volume (Bind mount)
    - `- v` is use to define volume, aslo we give another `-v` flag to override the changes so that it will not chnage in container.

```bash
docker run -v <path-on-folder-loacl-machine>:<path-to-folder-on-container> -p <local-machine-port>:<container-port> -d --name docker-node docker-node
```

```bash
docker run -v <path-on-folder-loacl-machine>:<path-to-folder-on-container> -v <path-to-file/folder-on-conatiner> -p <local-machine-port>:<container-port> -d --name docker-node docker-node
```
To make it read only so that when you add some files inside it the container and it will not get created on you local machine use `-v port:port:ro`


- To override the and ENV of a docker container, here PORT
```
-e PORT=3500
```
or file

```bash
--env-file <path-to-env-file>
Eg: --env-file ./.env
```

TO run docker compose file

```bash
docker compose up -d
```

```bash
docker compose down
```
- When we run docker compose while with the existing image it will not create build the image even tho there is some changes. It runs the stale version.

```
docker compose up --build
```

To override the existing config:

```bash
docker compose -f docker-compose.yaml  -f docker-compose.dev.yaml
```

- To list all the networks

```bash
docker network ls
```

To inspect a particular network

```bash
docker inspect <network-id>
```

to check which port are exposed in a container

```bash
docker container port <Container-name>
````

```
docker inspect --format "{{.NetworkSettings.IPAddress}}" <conatiner-name>
```

- To inspect which conatiners are attached to the a particalr newtork

```
docker network inspect <network-name>
docker network inspect bridge
```

- To create a network (It will create a bridge)

```
docker network create <network-name>
```

