#!/bin/sh

func() {
  echo "함수 안으로 들어왔음"
  ls "$1"
}

echo "프로그램 시작"
read option
func "$option"
echo "프로그램 종료"

exit 0
