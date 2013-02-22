echo $1;

pState=0;
cState=0;


while true
do
users > UsersLoggedIn
cat UsersLoggedIn | tr " " "\n" > usersSort.txt
grep $1 usersSort.txt > found.temp

wc -l found.temp > didLoggedIn
#loggedIn =
cut -f1 -d" " didLoggedIn > ile

varUser=$(cat ile);
#echo $varUser;

#if [ $varUser > 0 ]
if [ $varUser > 1 ]
  then
  pState=$cState;
 cState=1;
# echo "zalogowany"
fi

if [ $varUser = 0 ]
    then
    pState=$cState;
    cState=0;

 #  echo "niezalogowany"
fi

#echo $cState
#echo $pState

if [ $cState = 1 ]
  then
  if [ $pState = 0 ]
     then
     echo "Uzytwkonik $1 zalogowal sie"
  fi
fi

if [ $cState = 0 ]
   then
   if [ $pState = 1 ]
     then
    echo "uzytkownik $1 wylogowal sie"
   fi
fi





sleep 3;

done
