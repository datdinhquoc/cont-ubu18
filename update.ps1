#Remove container which uses base image
echo "Removing old container...";
docker container stop cont-ubu18;
docker container rm   cont-ubu18 -f;

#Remove old base
echo "`nRemoving old base image...";
docker image  rm cont-ubu18-base -f;

echo "`nRecreating new base image...";
docker commit cont-ubu18-base cont-ubu18-base;
#EOF