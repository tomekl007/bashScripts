@echo off

dir %1 | sort > dir1.txt
dir %2 | sort  > dir2.txt
type dir1.txt | findstr /v Dysk > dir1b.txt
type dir2.txt | findstr /v Dysk > dir2b.txt
FC dir1b.txt dir2b.txt 
rem | FIND "FC: no dif" > nul
IF ERRORLEVEL 1 goto :diffrent
goto :SAME


:SAME
ECHO katalogi sa takie same
goto end

:diffrent
 ECHO katalogi sa inne
goto end


rem FC file1.txt file2.txt | FIND "FC: no dif" > nul 
rem   IF ERRORLEVEL 1 goto :s_files_are_differen

:end