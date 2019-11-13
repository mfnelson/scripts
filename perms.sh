#!/bin/bash
path="/home/nelsonm/test"
group="sealed"
f_perms="771"
d_perms="771"

find $path ! -group $group -exec chgrp $group {} \;
find $path -type f ! -perm $perms -exec chmod $f_perms {} \;
find $path -type d ! -perm $perms -exec chmod $d_perms {} \;
find $path ! -perm 771 ! -group sealed {} \;
