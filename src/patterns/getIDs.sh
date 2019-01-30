echo "*** all ids"
cut -f1 *tsv | grep  PLANP  | sort  
echo " "
echo "***Checking for duplicate IDs"
cut -f1 *tsv | grep  PLANP  | sort | uniq -c | sort -n | awk {'if($1 > 1){print $1" of "$2} '}

OUT=`cut -f1 *tsv | grep  PLANP  | sort | uniq -c | sort -n | awk {'if($1 > 1){print $1" of "$2} '}`
OUTLEN=$(echo -n $OUT | wc -c)
if [ $OUTLEN -le 4 ] ;then
   echo "No Duplicates"
fi
