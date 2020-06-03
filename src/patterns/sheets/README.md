SHEETID=1iBSBr4c0EoumK8MAGCmjf329vjAxtBz-FtiyeIqnS34

URL=https://docs.google.com/spreadsheets/d/1iBSBr4c0EoumK8MAGCmjf329vjAxtBz-FtiyeIqnS34/edit#gid=463628839

echo "===================================="
echo "========    STEP 1  ================"
echo "===================================="
echo Visit this URL:
echo $URL
echo ""
echo "===================================="
echo "========    STEP 2  ================"
echo "===================================="
echo "Make sure GID index menu is up to date"
echo "Copy lines pattern name and GID into googleSheets.txt"
echo ""
echo "===================================="
echo "========    STEP 3  ================"
echo "===================================="
echo "Run this:"
echo "sh getSheets.sh"
echo ""
echo "===================================="
echo "========    STEP 4  ================"
echo "===================================="
echo "Double check your files with:"
echo "for i in *tsv ; do diff \$i ../data/default/\$i ; done"
echo ""
echo "===================================="
echo "========    STEP 5  ================"
echo "===================================="
echo "cp *tsv ../data/default/."
echo ""
