







while [ "$1" = "" ]   
do
 echo nie podales argumentu podaj :
read zmienna
 cat $zmienna
  if [ $? = "1"  ]
    then
     echo plik o podanej nazwe nie isnieje
  fi
 
   if [ $? = "0"  ]
      then 
       echo plik isnieje. POdaj piersza litere
        read pl
       echo podaj druga litere
        read dl        
            
echo $pl $dl


    
     cat $zmienna | grep -E "^[$pl-$dl]" > wynik.txt

       cat wynik.txt

  fi   


done



cat $1




