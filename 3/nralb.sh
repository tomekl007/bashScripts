cut -f1 -d":" moj4.txt > 1.txt
cut -f2 -d":" moj4.txt > 2.txt
cut -f3 -d":"  moj4.txt > 3.txt


paste -d":" 2.txt 3.txt 1.txt > mojReverse.txt

cat mojReverse.txt



