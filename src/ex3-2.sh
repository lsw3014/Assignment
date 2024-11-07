#!/bin/sh

read num1 operator num2

if [ "$operator" = "+" ]
then
  echo $((num1 + num2))
  
elif [ "$operator" = "-" ]
then
  echo $((num1 - num2))
  
fi
  
exit 0
