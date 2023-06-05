cd C:\Barath\GitHub\CICD_TEST\
mkdir POPUP.U1.JCL 
cd POPUP.U1.JCL
ftp -s:C:\Barath\GitHub\CICD_TEST\FTP.txt
cd C:\Barath\GitHub\CICD_TEST
echo ((((( Some sample text being entered here solely for testing purposes ))))) %DATE% %TIME%> README.md

git add .
git commit -m "Required files updated."
git push origin main