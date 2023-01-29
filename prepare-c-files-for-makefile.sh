#!/bin/bash

i=1
SRCS="SRCS = "
for file in *.c; do
	[ -f "$file" ] || continue
	if [ $i -eq 1 ]; then
		SRCS+="${file} \\\\\n"
	else
		SRCS+="\t${file} \\\\\n"
	fi
	((i++))
done

SRCS=${SRCS%????}

echo -e $SRCS
