cd C:\Barath\GitHub\CICD_TEST\DSN\


echo open 10.10.1.180 > DSN_transfer.txt
echo ibmuser >> DSN_transfer.txt
echo sandhata >> DSN_transfer.txt
echo cd /u/ibmuser/git-sync-test/ >> DSN_transfer.txt 
echo put dsnames >> DSN_transfer.txt 
echo quit >> DSN_transfer.txt
    
ftp -s:C:\Barath\GitHub\CICD_TEST\DSN\DSN_transfer.txt
del C:\Barath\GitHub\CICD_TEST\DSN\DSN_transfer.txt

