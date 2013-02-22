
@echo off


IF "%2"=="" goto malo
IF NOT "%3"=="" goto zaDuzo
IF "%2"=="%1" goto rowne
IF NOT "%2"=="%1" goto rozne

                
goto end

:malo
 ECHO Za malo parametrow
 goto end

:rowne
ECHO Parametry sa identyczne
goto end

:rozne
ECHO Parametry sa rozne
goto end

:zaDuzo
ECHO Za duzo parametrow
goto end





 :end
