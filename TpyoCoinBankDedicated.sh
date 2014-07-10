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
	gpg --encrypt --recipient 'C513 B610 5490 19FE 83EB DCB2 322F 7280 070D 501E' $file_name;
	rm $file_name;
done
