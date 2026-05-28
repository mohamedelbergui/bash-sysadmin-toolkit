#!/bin/bash

backup_source=$1
dest_folder=~/backup

if [ -e $backup_source ]; then
mkdir -p $dest_folder
cd $dest_folder
tar -czf "backup_$(date +%Y-%m-%d_%H-%M).tar.gz" $backup_source
else 
echo "$backup_source : isn't existe !!"
fi
