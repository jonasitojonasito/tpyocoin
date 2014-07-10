#!/bin/bash
while true; do
    read -p "Do you wish to create tpyocoins" yn
    case $yn in
        [Yy]* ) cd /home/jonas/tpyocointest;
		STR=$RANDOM;
		ptr=$RANDOM;
		file_conts=$ptr;
		file_name=$STR;
		echo $file_conts > $file_name;
		mkdir $file_conts;
		mv $file_name $file_conts; 
		file_name=${file_name}.tar.gz;
		tar -zcvf $file_name ${file_conts};
		gpg --encrypt --recipient '(Place your encryption finger print within the commas)' $file_name;
		rm $file_name;;

        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
