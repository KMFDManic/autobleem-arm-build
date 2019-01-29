FROM ubuntu:18.04

# It's me :D
LABEL maintainer="mggk@protonmail.com"

# Updating & upgrading ubuntu
RUN apt-get update
RUN apt-get upgrade -y

# Install compiler tools
RUN apt-get install -y bash git gcc-7 g++-7 cmake gcc-7-arm-linux-gnueabihf g++-7-arm-linux-gnueabihf

# Copying custom SDL build
RUN mkdir -p /usr/local/cross-tools/arm-linux-gnueabihf
ADD SDLarm.tar.gz /usr/local/cross-tools/arm-linux-gnueabihf/

# Preparing compilers
RUN ln -s /usr/bin/arm-linux-gnueabihf-g++-7 /usr/bin/arm-linux-gnueabihf-g++
RUN ln -s /usr/bin/arm-linux-gnueabihf-gcc-7 /usr/bin/arm-linux-gnueabihf-gcc

# Copying build script
RUN mkdir /work
COPY build.sh /
RUN chmod +x /build.sh
# Setting workdir
#WORKDIR /work

# Here we go !
CMD tail -f /dev/null