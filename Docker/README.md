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

ad58a6b4c1b1

- `docker ps -a` - Show all the stopped container.

- `docker rm <container ID>` - remove the container.

- `docker logs <container ID>` - logs of the container.
        - ``docker logs --since 5s <container ID>`  - logs of last 5s

- `docker container prune -f` - delete all the stoped container.


- `docker run -d <image-name>` - run the container in the background in the dattached mode.

- `doc run <image-name> <command>` run the command in the container terminal
    - `doc run ubuntu:16.04 echo hey`

- `doc rmi alpine -f` - remove the image

- `doc run -d -p 8080:80 nginx` - port forwarding

- `docker commit -m "message" <container-id> <name:tag>` - create a new image 
    - `docker commit -m "Added names.txt" d161deca74d2 name-ubuntu:1.01`

We can run by `doc run -it name-ubuntu:1.01

- `docker images -q` - Returns all the image ID's

- `docker rmi $(docker images -q) ` - Remove all the images at once

- `docker inspect  <image>` - inspect and get details about that image.

- Creating our Own image and container.

```
Step 1 - create Dockerfile
Step 2 - docker build -t myimage . (-t for tag)
Step 3 - docker run
```

- `docker login` - 






