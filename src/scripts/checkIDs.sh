echo "*** all ids"
PREFIX=PLANP
TSVs=~/src/ontology/planarian-phenotype-ontology/src/patterns/data/default/*tsv
cut -f1 $TSVs | grep  $PREFIX  | sort  
echo " "
echo "***Checking for duplicate IDs"
cut -f1 $TSVs | grep  $PREFIX | sort | uniq -c | sort -n | awk {'if($1 > 1){print $1" of "$2} '}

OUT=`cut -f1 $TSVs | grep  $PREFIX  | sort | uniq -c | sort -n | awk {'if($1 > 1){print $1" of "$2} '}`
OUTLEN=$(echo -n $OUT | wc -c)
if [ $OUTLEN -le 4 ] ;then
   echo "No Duplicates"
fi
