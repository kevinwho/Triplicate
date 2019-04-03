#! /bin/sh

# This script was created by Kevin Hu on September 18th, 2017.
# Please contact 'kevin.j.hu@gmail.com' before making changes.

# Change the current directory to the one containing this script.
cd "$(dirname "$0")"
ret=0
# Loop through all files with .jpg extension
for file in *.jpg
do
# Create copies
  cp -fp -- "$file" "${file%.*}_LG.${file##*.}" || ret=$?
  cp -fp -- "$file" "${file%.*}_thumbnail.${file##*.}" || ret=$?
done
exit "$ret"