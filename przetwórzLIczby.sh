echo "start";

echo " " > plikRezultat ;
for zmienna in $(cat tekst)
do

echo "$zmienna";
echo "cos tam";
echo "$zmienna" | cut -f1 -d"+" > a;
echo "$zmienna" | cut -f2 -d"+" > b;
varA=$(head -1 a);
varB=$(head -1 b);
let "wynik=varA+varB";
echo "$wynik" > wynikTejIteracji;

paste -d"+" a b > plikRezultatTemp;
paste -d"=" plikRezultatTemp wynikTejIteracji >> plikRezultat;

done;
