# Git Migrate

Git Migrate is a simple script for migrating git repos to another computer.

## What does it do

The script will cd into every folder that is in the same folder as the script. It will get the git origin link for that folder. Then it will add that link to a bash script.

You can then take the resulting bash script to another computer, and clone down all the repos in one command.

## How to use

simple place the script in a folder that contains git repos. Then run it `./Migrate.sh`. The script will create a file called MigrateClone.sh. Take that to another computer, and run it `./MigrateCLone.sh`

>[!TIP]
>The script will ignore non git folders
