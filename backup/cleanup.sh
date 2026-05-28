#!/bin/bash

cd ~/backup

for file in *
do
dateOfCr=$(echo "$file" | cut -d"." -f1 | cut -d"_" -f 2)
timeOfCr=$(echo "$file" | cut -d"." -f1 | cut -d"_" -f 3 | tr "-" ":")
cr=$(date -d  "$dateOfCr $timeOfCr" +%s)
now=$(date +%s)
diff=$((now-cr))
if (( diff >= 24*60*60 )); then
rm -rf "$file"
fi
done
