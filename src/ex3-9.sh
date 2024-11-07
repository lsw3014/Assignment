#!/bin/sh

read name
search=$(grep "^$name:" DB.txt)

if [ -n "$search" ]; then
  echo "$search"
else
  echo "해당 팀원의 정보가 없습니다."
fi

exit 0
