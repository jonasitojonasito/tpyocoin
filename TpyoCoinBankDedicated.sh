
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
		file_name3=${file_name}.tar.gz.gpg;
		tar -zcvf $file_name1 $file_conts;
		gpg --encrypt --recipient '' $file_name1;
		rm $file_name1
		chmod go-w $file_name3
		sleep 1
             
done
done
