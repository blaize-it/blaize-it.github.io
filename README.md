# Blaize.IT Website

Simple marketing website for Blaize.IT technology consulting made with [Jekyll](https://jekyllrb.com) using the [Creative](https://github.com/volny/creative-theme-jekyll) theme for [Github Pages](https://pages.github.com).

# Development

This is a Jekyll site that can be built and served using Docker. 

## Prerequisites 

- [Docker](https://www.docker.com/get-started) installed on your machine 

### Building the Docker Image 

To build the Docker image for this Jekyll site, run the following command in the root directory of this project (where the *Dockerfile* is located): 

```sh 
docker build -t blaize .
```

### Running the Docker Container

After building the Docker image, you can run the container with the following command:

```sh 
docker run -p 4000:4000 blaize
```

This will start a Jekyll server inside the Docker container and map port 4000 of the container to port 4000 on your host machine.

Once the container is running, you can access your Jekyll site by navigating to:

```sh 
http://localhost:4000
```
