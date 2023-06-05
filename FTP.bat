@echo off
cd C:\Barath\GitHub\CICD_TEST\DSN\

setlocal enabledelayedexpansion

set CURRENTDIR="C:\Barath\GitHub\CICD_TEST"

for /F "usebackq delims=" %%G in ("dsnames") do (
    set "folder=%%G" 	
    if not exist "%CURRENTDIR%\!folder!" mkdir "%CURRENTDIR%\!folder!"
    echo cd /u/ibmuser/git-sync-test/!folder!/ >> FTP.txt 
    echo mget * >> FTP.txt
    echo quit >> FTP.txt
    ftp -s:FTP.txt
)

cd C:\Barath\GitHub\CICD_TEST
echo ((((( Some sample text being entered here solely for testing purposes ))))) %DATE% %TIME%> README.md

git add .
git commit -m "Required files updated."
git push origin main