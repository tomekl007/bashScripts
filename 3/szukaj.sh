echo $1

grep $1 lista.txt > znalezione.txt
cat znalezione.txt

echo znaleziono :
wc -l znalezione.txt
echo osob
