# inherits from ubuntu image
FROM ubuntu:latest

# Make working directory
RUN mkdir /app
RUN mkdir /app/tools

# Set working directory
WORKDIR /app

# Copy files from host to image file system


# Run commands inside image file system
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install openjdk-14-jdk python3.8
RUN apt-get -y install nodejs npm python3-pip

# supporting commands
ENV JAVA_HOME=/usr/lib/jvm/java-14-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin

# Metadata for image
# EXPOSE 8000

# Run command within the container

