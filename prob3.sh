#!/bin/bash

tempfile='temp.txt'

cat charlie.txt | sed {s/-//g} > charlieclean.txt
raw=$( cat charlieclean.txt )

for word in $raw; do
	echo $word >> $tempfile
done

sort -f $tempfile | uniq -ci | sort -nr | head -n 10

rm $tempfile
rm charlieclean.txt


