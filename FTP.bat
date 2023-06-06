@echo off
cd C:\Barath\GitHub\CICD_TEST\DSN\

setlocal enabledelayedexpansion

set CURRENTDIR="C:\Barath\GitHub\CICD_TEST"
set FTPFILE="C:\Barath\GitHub\CICD_TEST\FTP.txt"

for /F "usebackq delims=" %%G in ("dsnames") do (
    set "folder=%%G" 	
    if not exist "%CURRENTDIR%\!folder!" mkdir "%CURRENTDIR%\!folder!"

    echo open 10.10.1.180 > "%FTPFILE%"
    echo ibmuser >> "%FTPFILE%"
    echo sandhata >> "%FTPFILE%"
    echo cd /u/ibmuser/git-sync-test/!folder!/ >> "%FTPFILE%" 
    echo prompt >> "%FTPFILE%" 
    echo mget * >> "%FTPFILE%"
    echo quit >> "%FTPFILE%"
    cd "%CURRENTDIR%\!folder!"

    ftp -s:C:\Barath\GitHub\CICD_TEST\FTP.txt
    del C:\Barath\GitHub\CICD_TEST\FTP.txt
)

cd C:\Barath\GitHub\CICD_TEST
echo (((((PDS got transfered from ZOS to GitHub))))) %DATE% %TIME%> README.md

git add .
git commit -m "Required files updated."
git push origin main