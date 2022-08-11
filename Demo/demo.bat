@Echo Off
@title NotifyFunction Demo -- By Yousifasd22 -- www.batch-man.com
@cd ..\Src
:Demo
cls
echo Sending A Notification...
notify DEMO Notification Sent.
goto :DEMO
echo Sent.
echo Press Any Key To Repeat. . .
pause>nul
goto :Demo