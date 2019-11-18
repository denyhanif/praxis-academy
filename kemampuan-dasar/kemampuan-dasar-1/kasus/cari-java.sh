sif [ `find $1 -name "*.txt" -type f` ]
    then
    	echo "Ada file Java pada direktori " `whereis` `find $1 -name "*.txt" -type f`
else
    echo "Tidak ada"
fi