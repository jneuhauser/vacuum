#!/bin/sh

if [ ! -r "$1" ]; then
    echo "File not found!"
    exit 1
fi

./builder_vacuum.sh     --run-custom-script=ALL \
                        --root-pass=cleaner \
                        --custom-user=cleaner \
                        --custom-user-pass=cleaner \
                        --enable-history \
                        -f $1