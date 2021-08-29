Ves's iPinger
echo off & cls
color A
echo  __     __               _           _   ____    _                               
echo  \ \   / /   ___   ___  ( )  ___    (_) ^|  _ \  (_)  _ __     __ _    ___   _ __ 
echo   \ \ / /   / _ \ / __^| ^|/  / __^|   ^| ^| ^| ^|_) ^| ^| ^| ^| '_ \   / _` ^|  / _ \ ^| '__^|
echo    \ V /   ^|  __/ \__ \     \__ \   ^| ^| ^|  __/  ^| ^| ^| ^| ^| ^| ^| (_^| ^| ^|  __/ ^| ^|   
echo     \_/     \___^| ^|___/     ^|___/   ^|_^| ^|_^|     ^|_^| ^|_^| ^|_^|  \__, ^|  \___^| ^|_^|   
echo                                                              ^|___/               
set /p IP=Enter IP:
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=4 & echo IP is offline.) 
color %in%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top