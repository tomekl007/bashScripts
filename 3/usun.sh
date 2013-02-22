echo $1

grep -r $1 lista.txt > usuniete.txt

sed  "/$1/ d" lista.txt > lista1.txt
#cat usuniete.txt | grep -v "$1" > usuniete.txt

cat usuniete.txt

echo usunieto 
wc -l usuniete.txt
echo osob spelniajace kryteria
