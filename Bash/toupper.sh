if [ $# -eq 0 ]
then
        echo " Usage:$0 <string>"
        exit 1
fi


input="$1"

echo "${input^^}"

