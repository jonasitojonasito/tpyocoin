#!/bin/bash
while true; do
        cd /home/jonas/tpyocointest;
	STR=$RANDOM;
	ptr=$RANDOM;
	file_conts=$ptr;
	file_name=$STR;
	echo $file_conts > $file_name;
	mkdir $file_conts;
	mv $file_name $file_conts; 
	file_name=${file_name}.tar.gz;
	tar -zcvf $file_name ${file_conts};
	gpg --encrypt --recipient '' $file_name;
	rm $file_name;
done
