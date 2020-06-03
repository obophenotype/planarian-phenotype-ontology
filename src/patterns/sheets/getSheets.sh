#for i in `cat googleSheets.txt`; do curl "https://docs.google.com/spreadsheets/d/1NzQznwebR_rvOejJzZax7UmZvvFk01bRksCdFtUl5rk/export?format=tsv&id=1NzQznwebR_rvOejJzZax7UmZvvFk01bRksCdFtUl5rk&gid=$i" -o sheets.$i.tsv; done



for i in `cut -f 2 googleSheets.txt`; do curl "https://docs.google.com/spreadsheets/d/1iBSBr4c0EoumK8MAGCmjf329vjAxtBz-FtiyeIqnS34/export?format=tsv&id=1iBSBr4c0EoumK8MAGCmjf329vjAxtBz-FtiyeIqnS34&gid=$i" -o sheets.$i.tsv; done


for i in sheets*.tsv ; do FILE=`head -1 $i | perl -p -e 's/.+\/(\S+)\.yaml/$1.tsv/' |  perl -p -e 's/\s+//g'`  ; tail -n +3 $i > $FILE; echo "" >> $FILE ; perl -pi -e 's/\r//g'  $FILE ;  done

rm sheets*.tsv
