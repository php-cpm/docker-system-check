#!/bin/sh

#refer https://www.freedesktop.org/software/systemd/man/os-release.html
test -e /sbin/apk && is_apk=1 || is_apk=0
test -e /usr/bin/apt && is_apt=1 || is_apt=0
test -e /usr/bin/yum && is_yum=1 || is_yum=0

if $is_yum == 1 :
  echo "yum"
elif $is_apt == 1 :
  echo "apt"
elif $is_apk == 1 :
  echo "apk"
fi
