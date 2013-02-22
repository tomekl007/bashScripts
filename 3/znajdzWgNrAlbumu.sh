while [ "$1" = "" ]
do
 echo podaj nazwe pliku
 read zmienna
 if [ $? = "1" ]
  then
  echo plik $1 nie istnieje
 fi

if [ $? = "0" ]
 then
 echo plik $1 istnieje. podaj pierwsza cyfre
  read pc
 echo podaj druga
  read dc


cat $zmienna | grep -E "^s+[$pc-$dc]" | cut -f1,5 -d":"

fi

done

