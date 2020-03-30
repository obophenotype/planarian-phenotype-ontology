SHEETID=1iBSBr4c0EoumK8MAGCmjf329vjAxtBz-FtiyeIqnS34

# In WebBrowser GO to: 
URL=https://developers.google.com/sheets/api/reference/rest/v4/spreadsheets/get?apix_params=%7B%22spreadsheetId%22%3A%22${SHEETID}%22%7D

echo "===================================="
echo "========    STEP 1  ================"
echo "===================================="
echo Visit this URL:
echo $URL
echo ""
echo "===================================="
echo "========    STEP 2  ================"
echo "===================================="
echo "Copy results of execute to sheets.json"
echo ""
echo "===================================="
echo "========    STEP 3  ================"
echo "===================================="
echo "Run these:"
echo "python3 parseJSON.py > googleSheets.txt"
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
