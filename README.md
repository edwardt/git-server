Git Server Installer
====================

This is a collection of scripts that will help you install a private Git server on any Linux box that you have SSH root access to.
Note: The script is split into two parts: the first you run as root, and the second you run as the 'git' user that the first script creates.
The third script creates a new repository. For more info, see 'How to Run' below.

What it Does
------------
1. (Optional) Updates apt and upgrades server software.
2. Installs git-core and openssh-server.
3. Creates 'git' user. (And prompts for a secure password needed to create repos.)

*Script 2*

4. Creates ~/.ssh directory. (Note: You can use `ssh-add` to add your keys to the file.)
5. Creates a repository named `firstrepo`.
6. You're done!

How to Run
----------
1. Log in to your server.
2. Do `cd` into the directory where you have the scripts.
3. Run `sudo git-server-install-p1.sh`.
4. When prompted, type in a password for your new `git` user. Make this secure, but you will need it to add new repositories.
5. Log in as the `git` user. Type the password thqt you just created.
6. Do `cd` into the directory where you have the scripts.
7. Run `git-server-install-p2.sh`.
8. Log out.
9. Go to a different computer.
10. Using `ssh-add` or another method, add your SSH key to the remote server.
11. Run `mkdir firstrepo && cd firstrepo && git init && git remote add origin git@RemoteServerIpOrName:firstrepo`.
12. Make some changes and commit.
13. Run `git push origin master`.
14. Now, you can clone that repo on other computers that have their key on the git server!
