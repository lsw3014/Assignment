#!/bin/sh

read folder_name

if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
fi

for i in $(seq 0 4)
do
  touch "$folder_name/file$i.txt"
done

for i in $(seq 0 4)
do
  subfolder="$folder_name/file$i"
  mkdir -p "$folder_name/file$i"
  ln -s "../file$i.txt" "$subfolder/file$i.txt"
done

exit 0
