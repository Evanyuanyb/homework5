#!/bin/bash
for d in {1..500}; do
	_cur="homework5/sub${d}/homework.txt"
	_tmp="homework5/sub${d}/.homework.txt"
	if   [ $(($d%10)) = 0 ]; then _r="vodki malo"
	elif [ $(($d%10)) = 1 ]; then _r="eat beets"
	elif [ $(($d%10)) = 4 ]; then _r="squash are great"
	elif [ $(($d%10)) = 5 ]; then _r="dogs aint better than cats"
	elif [ $(($d%10)) = 7 ]; then _r="hello world"
	else _r="" 
	fi
	awk -v rpl="$_r" '{ if (4==NR) print rpl 
			    else print $0 }' $_cur > $_tmp
	mv -f $_tmp $_cur
done
