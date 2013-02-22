#cut -c1 l.txt > f.txt
#cut -f2 -d" " l.txt | cut -c1 > s.txt

cat kol1.txt | sort > k1
cat kol2.txt | sort > k2

cut -f3 -d" " k2 | cut -c1 > k2o


#cat lista.id

#cat l.id
paste -d" " k1 k2o  > kolokwia.txt

cat kolokwia.txt
