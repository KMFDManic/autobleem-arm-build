# AUTOBLEEM ARM BUILDER
This simpple simply docker image is a rtu build env for AutoBleem the Playstation classic Payload
[Go to the GitHub and support the project !](https://github.com/screemerpl/cbleemsync)

# WARNING
This docker image is functionnal but it can be better, like automated build when running docker like with a docker start command ! Wanto to helo ? Just fork and create PR !

# How to use it ?
1 - docker pull 
2 - docker run --name aab -d -t -v LOCAL-PATH-TO-SOURCES:/work/src autobleem-arm-build
3 - docker exec -t -i aab /bin/bash
4 - sh build.sh
5 - Everything is builded in the build_arm folder of your sources !
