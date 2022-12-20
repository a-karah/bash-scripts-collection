# WTF! Only works with sh

#!/bin/sh

echo "SRCS = \\"
for i in *.c; do
	echo "\t$i \\"
done
