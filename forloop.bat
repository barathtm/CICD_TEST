@echo off
cd C:\Barath\GitHub\CICD_TEST\DSN\
set CURRENTDIR="C:\Barath\GitHub\CICD_TEST"

for /F "usebackq delims=" %%G in ("dsnames") do (
    if not exist "%CURRENTDIR%\%%G" mkdir "%CURRENTDIR%\%%G"
    echo Copying DS:-%%G
    copy "//'%%G'" "%CURRENTDIR%\%%G\"
)