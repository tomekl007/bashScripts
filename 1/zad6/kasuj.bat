@echo off

IF EXIST %1 goto del

 goto fail

:fail
  ECHO plik %1 nie isnieje
  goto end

:del
  ECHO plik %1 zostanie skasowany
  choice /C:TN
  IF errorlevel 2 goto anuluj
  IF errorlevel 1 goto usun
  
  
  goto end

:usun
  ECHO usun
  del %1
  goto end

:anuluj
   ECHO anuluj
   goto end

:end  
