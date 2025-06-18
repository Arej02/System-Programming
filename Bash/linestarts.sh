

# Write a bash script called linestarts.sh that takes in the name of a
# file as its first argument and reads the file one line at a time and echos
# the first letter of each line to output. Note that your script must use a
# loop to read the file one line at a time.

if [ -z "$1" ]
then 
	echo "Usage: $0 <filename>"
	exit 1
fi

filename=$1

if [ ! -f "$filename" ]
then
	echo "File not found"
	exit 1
fi

while IFS= read -r line
do
	echo "${line:0:1}"
done < "$filename"
