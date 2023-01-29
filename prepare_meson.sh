#!/bin/sh

if [ ! -f ./meson.build ]; then
  touch meson.build
fi

echo "src = files(" > meson.build
for i in *.c; do
        echo "\t'$i'," >> meson.build
done
echo ")" >> meson.build
