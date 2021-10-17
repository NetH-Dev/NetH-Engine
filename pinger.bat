mode con lines=20 cols=80
chcp 65001
cls
@echo off
title NetH Pinger
color d
cls
echo.
echo. Neth Pinger
echo.                                                                                                                                                        
set /p IP=[40;35mEnter Your IP:[40;37m 
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (echo.[40;31mOffline)
color %in%
ping -n 1 -t 2 0 10 127.0.0.1 >nul
GoTo top
