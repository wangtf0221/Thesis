#!/bin/sh
for shname in `ls *.eps`
do
    name=`echo "$shname" | awk -F. '{print $1}'`
#   echo $name.eps
    convert $name.eps jpg/$name.png
done
