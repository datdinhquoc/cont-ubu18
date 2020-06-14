#For ps:exec
sudo service ssh start;

#Run web server
cd /cont-ubu18/public;
python3 -m http.server $PORT;
#EOF