#!/bin/bash
APACHE=$(dpgk-query -W -f='$(Status)' apache2 2>/dev/null | grep -c 'ok installed')
if [[ $APACHE2 -eq 0 ]]; then
	echo "Paigaldame Apache2"
	apt install apache2
	echo "Apache on paigaldatud"
elif [[ $APACHE2 -eq 1 ]]; then
	echo "Apache2 on juba paigaldatud"
fi
