#!/bin/bash

ARGS=2  # 인자가 두 개 필요합니다.
E_BADARGS=65

if [ $# -ne "$ARGS" ]
then
  echo "사용법: `basename $0` file1 file2"
  exit $E_BADARGS
fi


cmp $1 $2 > /dev/null  # /dev/null 은 "cmp"의 출력을 안 보이게 해줍니다.
# 'diff'에서도 동작합니다. 즉, diff $1 $2 > /dev/null 

if [ $? -eq 0 ]        # "cmp"의 종료 상태를 확인.
then
  echo "\"$1\" 은 \"$2\" 와 똑같은 파일입니다."
else  
  echo "\"$1\" 은 \"$2\" 와 다른 파일입니다."
fi

exit 0
