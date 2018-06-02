@echo off
title KICH HOAT WINDOWS 10&cls&echo ************************************ &echo Tac gia: PHU QUANG ELECTRONIC &echo.&echo Phien ban ho tro:&echo - Windows 10 Home&echo - Windows 10 Professional&echo - Windows 10 Enterprise, Enterprise LTSB&echo - Windows 10 Education&echo.&echo.&echo ************************************ &echo Dang kich hoat Windows 10...
cscript //nologo c:\windows\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
echo ************************************ &echo.&echo.&set i=1
:server
if %i%==1 set KMS_Sev=kms.chinancce.com
if %i%==2 set KMS_Sev=NextLevel.uk.to
if %i%==3 set KMS_Sev=GuangPeng.uk.to
if %i%==4 set KMS_Sev=AlwaysSmile.uk.to
if %i%==5 set KMS_Sev=kms.chinancce.com 
if %i%==6 set KMS_Sev=kms.shuax.com
if %i%==7 exit
cscript //nologo c:\windows\system32\slmgr.vbs /skms %KMS_Sev% >nul
cscript //nologo c:\windows\system32\slmgr.vbs /ato | find /i "successfully" && (echo.& echo ************************************ & echo. & choice /n /c YN /m "Kich hoat thanh cong! Like va Dang ky kenh PHU QUANG ELECTRONIC ung ho minh nhe? [Y/N]" & if errorlevel 2 exit) || (echo Ket noi den server that bai! Dang thu ket noi server khac... & echo Vui long doi... & echo. & echo. & set /a i+=1 & goto server)
@pause