@echo off
:Main
cls
echo Made By Jose
set /p check= Enter Webhook To Check:
CURL %check%
pause
cls
goto check
:check
set /p input= Is Webhook Valid Y/N:
if %input% == Y goto deleter
if %input% == N cls goto checker
if %input% == y goto deleter
if %input% == n cls goto checker
echo Wrong choice 
cls
goto check

:checker
cls
set /p check= Enter Webhook To Check:
CURL %check%
pause
cls
goto check
:check
set /p input= Is Webhook Valid Y/N:
if %input% == Y cls goto deleter
if %input% == N goto checker
if %input% == y cls goto deleter
if %input% == n goto checker
echo Wrong choice 
cls
goto check

:deleter
set /p url= Enter Your Webhook To Delete:
CURL -X DELETE %url%
set /p input= Webhook Sucessfully Deleted
cls
goto exit
:exit
set /p exit=Would You Like To Exit Y/N:
if %exit% == Y goto exits
if %exit% == N goto Main 
if %exit% == y goto exits
if %exit% == n goto Main 
echo Wrong choice 
cls
goto exit

:exits
exit
