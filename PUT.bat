cd C:\Barath\GitHub\CICD_TEST
git pull 

@echo off
cd C:\Barath\GitHub\CICD_TEST\DSN\

setlocal enabledelayedexpansion

set CURRENTDIR="C:\Barath\GitHub\CICD_TEST"
set FTPFILE="C:\Barath\GitHub\CICD_TEST\FTP.txt"

for /F "usebackq delims=" %%G in ("dsnames") do (
    set "folder=%%G" 	
    
    echo open 10.10.1.180 > "%FTPFILE%"
    echo ibmuser >> "%FTPFILE%"
    echo sandhata >> "%FTPFILE%"
    echo cd /u/ibmuser/git-sync-test/>> "%FTPFILE%" 
    echo if not exist "!folder!" mkdir "!folder!"
    echo cd !folder!/
    echo prompt >> "%FTPFILE%" 
    echo mput * >> "%FTPFILE%"
    echo quit >> "%FTPFILE%"
    
    ftp -s:C:\Barath\GitHub\CICD_TEST\FTP.txt
    del C:\Barath\GitHub\CICD_TEST\FTP.txt
)