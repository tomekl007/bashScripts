echo KATAOLG1
find ./KATALOG1 -name "*" -printf "%p;%CY-%Cm-%Cd;%CH-%CM-%.2CS\n" | sort > plik1

cut -f3 -d"/" plik1 | cut -f1 -d";" |sort   >  nazwy1

echo KATAOLG2
find ./KATALOG2 -name "*" -printf "%p;%CY-%Cm-%Cd;%CH-%CM-%.2CS\n" | sort > plik2


cut -f3 -d"/" plik2 | cut -f1 -d";" | sort   > nazwy2

comm -2 -3 nazwy1 nazwy2 > tylko_w_1
comm -1 -3 nazwy1 nazwy2 > tylko_w_3
comm -1 -2 nazwy1 nazwy2 > wspolne






#hile read plik1
#do 
#   echo $plik1
#done





cut -f3 -d"/" plik2 | cut -f2,3 -d";" | sort   > data1


cut -f3 -d"/" plik2 | cut -f2,3 -d";" | sort   > data2

cut -f1 -d";" data1 | sort > d1
cut -f1 -d";" data2 | sort > d2

cut -f2 -d";" data1 | sort > g1
cut -f2 -d";" data2 | sort > g2



for i in $(cat plik1)
do
echo 1$i

  echo $i > temp1
cut -f3 -d"/" temp1 | cut -f1 -d";" | sort > n1

 
cut -f3 -d"/" temp1 | cut -f2,3 -d";" | sort > d1



 for j in $(cat plik2)
     do
     echo 2$j

   echo $j > temp2 

cut -f3 -d"/" temp2 | cut -f1 -d";" | sort > n2

cut -f3 -d"/" temp2 | cut -f2,3 -d";" | sort > d2



echo !!
 cat n1
 cat n2

v1=$(head -1 n1)

v2=$(head -1 n2)


echo zmienna1
echo $v1
echo zmienna2
echo $v2

      if [ $v1 = $v2 ] 

#tu powinieniem sprawdac ktorego pliku data utworzenia jest wczesniejsza 
#i zapisac w odpowiedzniej kolejnosci do wspolne7    
   then
    echo DATA1
    cat d1

    echo in_If
       echo $j$i >> wspolne7
        
       
       fi
     done 	


done

echo KONIEC

cat wspolne7

echo czy chcesz zsynchronizowac pliki?[1/0]

read zmienna 
 
  if [ $zmienna = "1" ] 
     then
     echo chcesz
      


cut -f1 -d";" wspolne7 > dir1
cut -f3 -d";" wspolne7 | cut -f2,3 -d"/" > dir2

#| cut -f2 "." > dir2

echo 1
cat dir1
echo 2
cat dir2
#to powinno byc w pentli

 dest=$(head -2 dir1)
 
 src=$(head -2 dir2)


echo dest 
echo $dest > d1


echo src 
echo $src > s1

cut -f2 -d" " d1 > destt
cut -f2 -d" " s1 > srct


echo pliki
cat destt

cat srct
 

prefix='./'


 d3=$(head -1 destt)



s3=$(head -1 srct)


dsrc=$prefix$s3

echo d3
echo $d3

echo dsrc
echo $dsrc




cp $d3 $dsrc

fi

