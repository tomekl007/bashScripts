cat moj3.txt grep -v -E "^s[[:digit:]]{6}:{5-20}.:.{5-20}" > moj.error




cat moj3.txt grep -E "^s[[:digit:]]{6}:.{5-20}:.{5-20}" > moj4.txt



echo DOBRE

cat moj4.txt

