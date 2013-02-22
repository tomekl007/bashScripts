pVarUser=0;
#while true
#do
finger > UsersLoggedIn.temp
#cat UsersLoggedIn | tr " " "\n" > usersSort.temp
#cat /etc/passwd > allUsers

#comm -1 -2 usersSort.temp allUsers > kto;
#cat kto;


cut -f1,3,4,5 -d" " UsersLoggedIn.temp > cKto;
cat cKto;


while true
do
users > UsersLoggedIn
cat UsersLoggedIn | tr " " "\n" > usersSort.temp


wc -l usersSort.temp > didLoggedIn
#loggedIn =
cut -f1 -d" " didLoggedIn > ile

cVarUser=$(cat ile);
echo $cVarUser;
echo $pVarUser;

#if [ $varUser > 0 ]
if [ $cVarUser -ne $pVarUser ]
then
finger > UsersLoggedIn.temp;
echo "in if";
cat cKto > pKto;
cut -f1,3,4,5 -d" " UsersLoggedIn.temp > cKto;
#cat cKto;
#comm -1 -3 pKto cKto;



 if [ $pVarUser -gt $cVarUser ]
  then
  ubyloIle=$(expr $pVarUser - $cVarUser);
  echo "ubylo : $ubyloIle"
  echo "nastepujace osoby: " ;
  comm -1 -3 cKto pKto > tylko_w_1;
  cat tylko_w_1;
 fi

 if [ $pVarUser -lt $cVarUser ]
   then
   przybyloIle=$(expr $cVarUser - $pVarUser);
   echo "przybylo : $przybyloIle";
   echo "nastepuj¹ce osoby :";
#echo "->>>pktp";
#cat pKto;
#echo " c->>kto";
#   cat cKto
   comm -1 -3 pKto cKto > przybylo;
   echo " ---------------------------------aa--a-";
   cat przybylo;
 fi;

pVarUser=$cVarUser;
fi

sleep 3;
done

