echo "Pushing image to Heroku...";
heroku container:push web -a cont-ubu18;

echo "`nReleasing (publishing) the image...";
heroku container:release web -a cont-ubu18;

echo "`nDeploying...";
heroku ps:scale web=1 -a cont-ubu18;
#EOF