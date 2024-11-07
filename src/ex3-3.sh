#!/bin/sh

read weight height

# cm로 입력받았으므로 * 10000
bmi=$(echo "$weight / ($height * $height) * 10000" | bc -l)

is_underweight=$(echo "$bmi <= 18.5" | bc -l)
is_overweight=$(echo "$bmi > 23" | bc -l)

if [ "$is_underweight" -eq 1 ]
then
  echo "저체중입니다."
  
elif [ "$is_overweight" -eq 1 ]
then
  echo "과체중입니다."
  
else
  echo "정상체중입니다."
fi

exit 0
