#!/bin/sh

test -e /sbin/apk && is_apk=1 || is_apk=0
test -e /usr/bin/apt && is_apt=1 || is_apt=0
test -e /usr/bin/yum && is_yum=1 || is_yum=0

if [ $is_yum = 1 ]; then
  echo "yum"
elif [ $is_apt = 1 ]; then
  echo "apt"
elif [ $is_apk = 1 ]; then
  echo "apk"
fi
