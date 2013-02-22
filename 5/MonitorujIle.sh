pState=0;
cState=0;

pVarUser=0;
while true
do
users > UsersLoggedIn
cat UsersLoggedIn | tr " " "\n" > usersSort.temp


wc -l usersSort.temp > didLoggedIn
#loggedIn =
cut -f1 -d" " didLoggedIn > ile

cVarUser=$(cat ile);
#echo $varUser;

#if [ $varUser > 0 ]
if [ $cVarUser != $pVarUser ]
 then
 if [ $pVarUser -gt $cVarUser ]
  then
  ubyloIle=$(expr $pVarUser - $cVarUser);
  echo "ubylo : $ubyloIle"
 fi

 if [ $pVarUser -lt $cVarUser ]
   then
   przybyloIle=$(expr $cVarUser - $pVarUser);
   echo "przybylo : $przybyloIle";
 fi;

pVarUser=$cVarUser;
fi






#echo $cState
#echo $pState

echo "na serverze pracuje $cVarUser"


sleep 3;

done
