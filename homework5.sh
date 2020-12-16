#!/bin/bash
mkdir -p homework5/sub{1..500}
_blrp="first\nsecond\nthird\nfourth\nfifth"
for d in {1..500}; do 
	echo -e $_blrp>>"homework5/sub${d}/homework.txt"
done

