# Docker Image with Jenkins + Docker (and some extra tools)
## Summary
This is an extension of the official Jenkins image.
This Jenkins comes with pre-installed:
* Docker
* Sass 

To see more details please check Dockerfile.

## Install
Run this command
* `sudo docker run --privileged=true -d --name jenkins -v ~/jenkins:/var/jenkins_home -p 8080:8080 terahorse/jenkins`
