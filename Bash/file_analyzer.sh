
text_count=0
image_count=0
shell_count=0
datafiles_count=0
otherfile_count=0

for filename in "$@"
do
	case "$filename" in
		*.txt | *.md)
			((text_count++));;
		*.jpg | *.png | *.gif)
			((image_count++));;
		*.sh)
			((shell_count++));;
		*.csv | *.json)
			((datafiles_count++));;
		*)
			((otherfile_count++));;
	esac
done

echo "Text File: $text_count"
echo "Image File: $image_count"
echo "Shell File: $shell_count"
echo "Data File: $datafiles_count"
echo "Other Files: $otherfile_count"

	
#*.jpg | *.png | *.gif means:
#Match either .jpg or .png or .gif extensions.
