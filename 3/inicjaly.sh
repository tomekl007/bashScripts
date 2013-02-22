cut -c1 l.txt > f.txt
cut -f2 -d" " l.txt | cut -c1 > s.txt


#cat lista.id

#cat l.id
paste -d"." f.txt s.txt > inicjaly.txt

cat inicjaly.txt
