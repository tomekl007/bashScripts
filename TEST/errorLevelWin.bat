@echo off
choice /C:123

  IF errorlevel 3 goto trzy
  IF errorlevel 2 goto dwa
  IF errorlevel 1 goto jeden
  
  goto end

:trzy
  ECHO trzy
  
  goto end

:dwa
   ECHO dwa
   goto end
   
:jeden
   ECHO jeden
   goto end
 
:end 