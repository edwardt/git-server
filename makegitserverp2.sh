#Run this file 1st, as root
apt-get update
#Uncomment below to upgrade all software as well.
#apt-get upgrade
apt-get install git-core openssh
echo "Please enter a secure password for the git user below. You will need this to create new repos, but not other git operations (like clone or push)."
adduser --group git
mkdir /home/git/.ssh
chown -R git:git /home/git
chmod -R 600 /home/git/.ssh
echo "Now run makegitserverp2.sh as the new git user."