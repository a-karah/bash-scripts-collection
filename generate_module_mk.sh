#!/bin/bash

DIR="$(realpath $1)"

MODULE=""

# Get directory name
LOCAL_DIR="LOCAL_DIR := $(basename $DIR)\n"

# List all *.c files
i=1
SRCS="LOCAL_SRCS := "
for file in $DIR/*.c; do
        if [ $i -eq 1 ]; then
				SRCS+="$(basename $file) \\\\\n"
        else
                SRCS+="\t\t$(basename $file) \\\\\n"
        fi
        ((i++))
done
SRCS=${SRCS%????}

STR="\nLOCAL_SRCS := \$(addprefix \$(LOCAL_DIR)/, \$(LOCAL_SRCS))\n"
STR+="LOCAL_OBJS := \$(LOCAL_SRCS:%.c=\$(BUILD_DIR)/%.o)\n\n"
STR+="SRCS += \$(LOCAL_SRCS)\n"
STR+="OBJS += \$(LOCAL_OBJS)\n"

MODULE+=$LOCAL_DIR
MODULE+=$SRCS
MODULE+=$STR

echo -e $MODULE
