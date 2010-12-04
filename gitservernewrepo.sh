#Run this file 2nd, as the git user.
mkdir firstrepo.git
cd firstrepo.git
git init --bare
echo "You now have an empty Git repo called firstrepo.git on your server."
echo "Use below commands to push an existing repo to this one."
echo "cd mytestrepo"
echo "git remote add origin git@server.com:firstrepo.git"
echo "git push origin master"