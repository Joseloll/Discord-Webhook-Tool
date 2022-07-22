@echo off
:Main
cls
echo Made By Jose
set /p option= Would You Like To Check 1 One Webhook Or 2:
if %option% == 1 goto checker
if %option% == 2 goto checkers
echo Wrong choice
cls
goto main

:checkers
set /p check= Enter Your 1st Webhook Url:
curl %check%
pause
cls
set /p check= Enter Your 2nd Webhook Url:
curl %check%
pause 
cls
goto checks

:checks 
set /p input= Is Webhook Valid Y/N:
if %input% == Y goto deleter
if %input% == N goto checkers
if %input% == y goto deleter
if %input% == n goto checkers
echo Wrong choice 
cls
goto checks

:check
set /p input= Is Webhook Valid Y/N:
if %input% == Y goto deleter
if %input% == N goto checker
if %input% == y goto deleter
if %input% == n goto checker
echo Wrong choice 
cls
goto check

:checker
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
if %input% == N goto checker
if %input% == y goto deleter 
if %input% == n goto checker
echo Wrong choice 
cls
goto check

:deleter
set /p choice= Would You Like To Delete 1 Webhook or 2 Webhook:
if %choice% == 1 goto delete
if %choice% == 2 goto deleters
echo Wrong choice 
cls
goto deleter

:delete
cls
set /p url= Enter Your Webhook To Delete:
CURL -X DELETE %url%
set /p input= Webhook Sucessfully Deleted
cls
goto exit

:deleters
cls
set /p url= Enter Your 1st Webhook Url:
cls
CURL -X DELETE %url%
set /p url= Enter Your 2nd Webhook Url:
cls
CURL -X DELETE %url%
set /p input=All Webhooks SucessFully Deleted
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
