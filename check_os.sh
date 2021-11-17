#!/bin/sh

#refer https://www.freedesktop.org/software/systemd/man/os-release.html
test -e /etc/os-release && os_release='/etc/os-release' || os_release='/usr/lib/os-release'

OS=`grep '^ID=' ${os_release} |awk -F '=' '{print $2}' 2>/dev/null`
echo ${OS}
