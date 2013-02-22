echo $1 | cut -f2 -d"." > dzies;

varDzies=$(cat dzies);

if [ $varDzies = "0" ]
then
echo "liczba $1 jest calkowita"
else
echo "liczba $1 nie jest calkowita"
fi
