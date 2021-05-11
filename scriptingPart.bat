@echo off

:start
cls
echo Which slot do you want the character to go over? (1/2/3)
choice /C 123 /N
set slot=%ERRORLEVEL%
echo Which character do you want to use as a base?
echo S - Sonic
echo T - Tails
echo K - Knuckles
choice /C STK /N
set char=%ERRORLEVEL%
set charName=error if you see this tell lave
if %char%==1 set charName=Sonic
if %char%==2 set charName=Tails
if %char%==3 set charName=Knuckles
echo Is this what you want? (Y/N)
echo A character based on %charName% on slot %slot%
choice /C YN /N
if %ERRORLEVEL%==2 goto start

:writing
echo function void Slot%slot%Char()> main.lemon
echo {>> main.lemon
echo 	global.characters = %char%>> main.lemon
echo }>> main.lemon
