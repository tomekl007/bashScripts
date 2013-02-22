ls | grep -E "*.doc" > docT
ls | grep -E "*.txt" > txtT

cat docT | cut -f2 -d"." > docName;
cat txtT | cut -f2 -d"." > txtName;

varDoc=$(head -1 docName);
varTxt=$(head -1 txtName);
echo $varDoc;
echo $varTxt;

mkdir $varDoc;
mkdir $varTxt;

mv *.txt $varTxt;
mv *.doc $varDoc;
