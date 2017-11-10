#!/bin/bash

# config
mnt_source=//192.168.1.23/media
mnt_targt=/mnt/bbq10
mnt_uname=blackberryq10
mnt_psswd=1234567890
local_uname=pi

# begin
if echo "$HOME" | grep '/root'
 then
  #echo "you are root."
  if mount | grep $mnt_targt > /dev/null;
   then
    echo $mnt_source" is already mount."
    exit 1
   else
    echo "trying mount from "$mnt_source" to "$mnt_targt" ..."
    mount -t cifs $mnt_source $mnt_targt -o username=$mnt_uname,passwd=$mnt_psswd,uid=$local_uname,gid=$local_uname
	if mount | grep $mnt_targt > /dev/null; then
	 echo "success."
	 fi
  fi
 else
  echo "you are not root user! : sudo sh "$0" try again."
  exit 1
fi

