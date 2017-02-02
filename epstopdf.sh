#!/bin/sh
for shname in `find . -name *.eps`
do
#    name=`echo "$shname"`
    name=`echo "$shname" | awk -F. '{print $2}'`
    name1=`echo "$name" | awk -F. '{print $1}'`
#	echo $name
	echo .$name1.eps
    epspdf .$name1.eps .$name1.pdf
done
