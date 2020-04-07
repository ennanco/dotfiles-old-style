#!/bin/bash

EXCLUDE="--exclude=/dev/* --exclude=/proc/* --exclude=/sys/* --exclude=/tmp/* --exclude=/run/* --exclude=/mnt/* --exclude=/media/* --exclude=/home/lost+found --exclude=/home/*/.cache/* --exclude=/home/*/.local/share/Trash/ --exclude=/home/*/snap"
BACKUP_FILE="/media/quique/My\\ Passport/_Backup"

sudo rsync -AaHXSvn --delete ${EXCLUDE} / ${BACKUP_FILE}
