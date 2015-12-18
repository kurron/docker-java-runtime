#Overview
This project is a simple Docker image that runs [Oracle Java](http://www.oracle.com/technetwork/java/index.html) applications and scripts.

#Prerequisites
* a working [Docker](http://docker.io) engine
* a working [Docker Compose](http://docker.io) installation

#Building
Type `docker-compose build` to build the image.

#Installation
Docker will automatically install the newly built image into the cache.

#Tips and Tricks

##Launching The Image

`docker-compose up` will launch the image allowing you to begin working on projects. The Docker Compose file is 
configured to mount your home directory into the container.  

##Day To Day Use
The way the container works is that it mounts your home folder and the current working directory.  That means any script or
program you want to run must be in one of those two places.  Use the convenience Bash script to launch the container with
the proper settings.  For example, if you want to start a Gradle build, you would run `~/GitHub/docker-java-runtime/java.sh ./gradlew`
to execute the `gradlew` script in the current working directory.  To make referencing the script easier, you probably want to
create an alias for it or a soft-link to it.

#Troubleshooting

##User Account
The image assumes that the account running the continer will have a user and group id of 1000:1000.  This allows the container 
to save files in your home directory and keep the proper permissions.

#License and Credits
This project is licensed under the [Apache License Version 2.0, January 2004](http://www.apache.org/licenses/).

#List of Changes

