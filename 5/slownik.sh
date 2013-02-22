slowo=$1;
echo $slowo;

for linia in $(cat slownik.txt)
do
#echo $linia;

echo $linia | cut -f1 -d"=" > ang;

angVar=$(cat ang);


if [ $slowo = $angVar ]
 then
 echo $linia | cut -f2 -d"=" > pol;




 for transLine in $(cat trans.txt)
 do
 echo $transLine | cut -f1 -d"," > transTemp;
 transVar=$(cat transTemp);

 if [ $slowo = $transVar ]
  then
#ehho "tu"
#echo $transLine;

 echo $transLine | cut -f2 -d"," > transF;
break;
#cat transF;
 fi

 done
 cat pol;
 cat transF;

 break;
fi

done
