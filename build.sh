#Miscs
echo 'export PS1="\n\u@cu.heroku:\W$ "' >/etc/profile.d/default.sh;

#For ps:exec
#See: https://stackoverflow.com/a/46670119/5581893
#     https://devcenter.heroku.com/articles/exec#using-with-docker

#These should already be in base image (base, not original)
#BUT THEY MUST BE HERE TOO FOR DEPLOYMENT,
#CAN'T GET WHY PRE-INSTALLING IN BASE IMAGE NOT WORKING
sudo apt update -y;
sudo apt install curl -y;
sudo apt install openssh-server -y;

#Heroku exec
mkdir -p /app/.profile.d
chmod -R 777 /app
echo '[ -z "$SSH_CLIENT" ] && source <(curl --fail --retry 5 -sSL "$HEROKU_EXEC_URL")' \
>/app/.profile.d/heroku-exec.sh

#Bash as default
rm /bin/sh && ln -s /bin/bash /bin/sh
#EOF