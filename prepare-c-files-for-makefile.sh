#!/bin/bash
# https://superuser.com/questions/951905/is-there-a-way-to-echo-a-blackslash-followed-by-newline-in-bash

i=1
SRCS="SRCS = "
for file in *.c; do
	if [ $i -eq 1 ]; then
		SRCS+="${file} \\\\\n"
	else
		SRCS+="\t${file} \\\\\n"
	fi
	((i++))
done

echo -e $SRCS
