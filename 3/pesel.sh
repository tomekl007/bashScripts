echo POdaj swoj numer pesel:
read zmienna

echo 12345678912 | md5sum > sumPattern

#test $zmienna -eg
 echo $zmienna | grep -E "^[1-9]{11}" | md5sum > sum

cmp sumPattern sum
#echo $?

if [ "$?" == "0" ]; then 
   echo dobrze
else
   echo zle
fi



 

cat sum

cat sumPattern










