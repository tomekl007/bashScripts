cut -c1-3 l.txt > lista.id 
cut -f2 -d" " l.txt | cut -c1-3 > l.id


#cat lista.id

#cat l.id
paste -d" " l.id lista.id > fin.id

cat fin.id 
