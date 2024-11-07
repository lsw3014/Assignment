#!/bin/sh

read folder_name

if [ ! -d "$folder_name" ]; then
  mkdir "$folder_name"
fi

for i in $(seq 0 4)
do
  touch "$folder_name/file$i.txt"
  echo "$folder_name/file$i.txt"
done

tar_folder="${folder_name}.tar"
tar -cf "$tar_folder" -C "$folder_name" .

untar_folder="${folder_name}_untar"
mkdir "$untar_folder"
tar -xf "$tar_folder" -C "$untar_folder"

exit 0

