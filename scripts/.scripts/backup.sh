#!/bin/bash

#EXCLUDE="--exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude=/home/lost+found --exclude=/home/*/.cache/* --exclude=/home/*/.local/share/Trash/ --exclude=/home/*/snap --exclude=swapfile"
EXCLUDE="--exclude=/home/lost+found --exclude=/home/*/.cache/* --exclude=/home/*/.local/share/Trash/ --exclude=/home/*/snap"
BACKUP_FILE="/media/quique/Trabajo/_Backup"

sudo rsync -AaHXSv --delete ${EXCLUDE} /home ${BACKUP_FILE}
