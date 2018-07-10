while read l; do
	find $l -type f -name "error_log" > result.txt	

	while read p; do
		echo 'Bulunan : '$p
		sudo mv $p /home/XXXXX/public_html/error_logs/$RANDOM.$RANDOM.$RANDOM.txt
	done <result.txt

done <listfolder.txt
