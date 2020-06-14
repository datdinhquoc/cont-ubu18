#Create base container from original container 'monolithprojects/systemd-ubuntu18'
#then commit to 'cont-ubu18-base'
from cont-ubu18-base
copy .  /cont-ubu18
run  cd /cont-ubu18; bash build.sh
cmd  cd /cont-ubu18; bash start.sh
#EOF