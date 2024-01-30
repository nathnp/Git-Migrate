# Git Migrate

Git Migrate is a simple script for migrating git repos to another computer.

## What does it do

The script will cd into every folder that is in the same folder as the script. It will get the git origin link for that folder. Then it will add that link to a bash script.

You can then take the resulting bash script to another computer, and clone down all the repos in one command.

>![NOTE]
> This script only really works if all the folders are git repos, I am planning on fixing that
