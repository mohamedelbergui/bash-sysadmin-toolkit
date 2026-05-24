#!/bin/bash

backup_source=$1
dest_folder=~/buckup

if [ -e $backup_source ]; then
mkdir -p $dest_folder
cd $dest_folder
pwd
tar -czf "backup_$(date +%y-%m-%d_H-M).tar.gz" $backup_source
else 
echo "$backup_source : isn't existe !!"
fi
