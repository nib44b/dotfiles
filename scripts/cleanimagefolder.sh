read -p "enter the file or directory: " DIR

if [ -d ${DIR} ]
then 
    echo "its a directory"
elif [ -f ${DIR} ]
then
    echo "its a regular file"
else
    echo "file is not a regular file or a directory "
fi
