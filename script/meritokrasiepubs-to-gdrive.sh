#!/bin/bash
rclone copy $HOME/btsync/ gd:/e-kitap --bwlimit=1024k --transfers=1 --ignore-size --verbose --include "{meritokrasi,neo-meritokrasi}/**/*.epub" --log-file /var/log/rclone/`date +%y%m%d_%H%M%S_rclone.log`
