

read -p "Enter the name of the file:" filename

if [ -f "$filename" ]
then 
	if [ -s "$filename" ]
		then 
			echo "The file exists and is not empty"
			cat "$filename"
		else
			echo "The file exists but is empty"
	fi
	else
		echo "The file doesnot exist"
fi
