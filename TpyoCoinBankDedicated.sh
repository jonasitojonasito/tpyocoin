
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
		file_name1=${file_name}.tar.gz;
		file_name2=${file_name}.tpyo;
		file_name3=${file_name}.tar.gz.gpg;
		tar -zcvf $file_name1 $file_conts;
		gpg --encrypt --recipient 'C513 B610 5490 19FE 83EB DCB2 322F 7280 070D 501E' $file_name1;
		mv $file_name1 $file_name2;
		rm $file_name3
		sleep 1
             
done
