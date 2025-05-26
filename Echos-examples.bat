:: Echos.exe -- Usage examples
:: Locate this BATch file in the directory with echos.exe
@echo off
setlocal
cls
echo Echos.exe -- Usage examples
echo C.L.Distefano rev. 2025-05-26
echo:

set echos=%~dp0echos.exe
if not exist %echos% (
	echo Locate this BATch file in the directory with echos.exe!
	exit /B)
echo: & pause & echo/
cls

%echos% Plain text, output with trailing newline (default):
set command=echos The quick brown fox jumped over the lazy dog.
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
%echos% -e -n Output : \d32
%command%
%echos% -e \n
pause

%echos% -e \nPlain text, no trailing newline (option -n):
set command=echos -n The quick brown fox jumped over the lazy dog.
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
%echos% -e -n Output : \d32
%command%
%echos% -e \n
pause & cls

%echos% Escape codes: Backslash (\\)
set command=echos -e The Users directory is: C:\\\\Users
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e \d32The Users directory is: C:\\Users\d32
%echos% -e -n Output :\d32
%command%
%echos% -e \nCompare
set command=echos -e The Users directory is: C:\\Users\d32
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e \d32The Users directory is: C:\Users\d32
%echos% -e -n Output :\d32
%command%
%echos% -e -n \n
pause

%echos% -e \nEscape codes: Double quotes (\\\")
set command=echos -e Alternative \\\\\"facts\\\\\" are not facts at all!
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e Alternative \\\"facts\\\" are not facts at all!
%echos% -e -n Output : \d32
%command%
%echos% -e \nCompare
set command=echos -e Alternative \"facts\" are not facts at all!
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e Alternative "facts" are not facts at all!
%echos% -e -n Output : \d32
%command%
%echos% -e -n \n
pause & cls

%echos% Escape codes:  Horizontal tabs (\t)
set command=echos -e Learn to stretch\\tyour\\tresources.\d32
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e Learn to stretch\tyour\tresources.
%echos% -e -n Output : \d32
%command%
%echos% -e -n \n
pause &%echos% -e -n \n
%echos% Escape codes:  Vertical tabs (\v)
set command=echos -e It's\\vall\\vdownhill\\vfrom\\vhere\\v!!!\d32
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e It's\vall\vdownhill\vfrom\vhere\v!!!\d32
%echos% -e -n Output : \d32
%command%
%echos% -e -n \n
pause & cls

%echos% Escape codes: decimal Ascii characters (\d[N[N]]N)
set command=echos -e 128=\\d128 129=\\d129 130=\\d130 ... 253=\\d253 254=\\d254 255=\\d255\e[0m\d32
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e 128=\d128 129=\d129 130=\d130 ... 253=\d253 254=\d254 255=\d255
%echos% -e -n Output : \d32
%command%
%echos% -e -n \n
pause & %echos% -e -n \n
%echos% Escape codes: decimal characters, force UTF-16 (-U ... \d[N[N]]N)
set command=echos -e -U 128=\\d128 129=\\d129 130=\\d130 ... 253=\\d253 254=\\d254 255=\\d255\e[0m
%echos% -e Command: \d32\e[7m%command%\e[0m
set command=echos -e -U 128=\d128 129=\d129 130=\d130 ... 253=\d253 254=\d254 255=\d255
%echos% -e -n Output : \d32
%command%
%echos% -e -n \n
pause & cls

%echos% Escape codes: ANSI foreground/background colors
set command=echos -e \\d32\\e[31mThe quick red fox\\e[0m \\d32\\e[41mThe quick red fox\\e[0m \\d32\\e[91mThe quick red fox\\e[0m \\d32\\e[101mThe quick red fox\\e[0m
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e \e[31mThe quick red fox\e[0m \d32\e[41mThe quick red fox\e[0m \d32\e[91mThe quick red fox\e[0m \d32\e[101mThe quick red fox\e[0m 
%echos% -e -n \e[0mOutput : \d32
%command%
%echos% -e -n \n
pause & %echos% -e -n \n

set command=echos -e \\d32\\e[32mThe quick green fox\\e[0m \\d32\\e[42mThe quick green fox\\e[0m \\d32\\e[92mThe quick green fox\\e[0m \\d32\\e[102mThe quick green fox\\e[0m
%echos% -e Command: \d32\e[7m%command%\e[0
set command=echos -e \e[32mThe quick green fox\e[0m \d32\e[42mThe quick green fox\e[0m \d32\e[92mThe quick green fox\e[0m \d32\e[102mThe quick green fox\e[0m
%echos% -e -n \e[0mOutput : \d32
%command%
%echos% -e -n \n
::pause & %echos% -e -n \n

set command=echos -e \\d32\\e[33mThe quick yellow fox\\e[0m \\d32\\e[43mThe quick yellow fox\\e[0m \\d32\\e[93mThe quick yellow fox\\e[0m \\d32\\e[103mThe quick yellow fox\\e[0m
%echos% -e Command: \d32\e[7m%command%\e[0
set command=echos -e \e[33mThe quick yellow fox\e[0m \d32\e[43mThe quick yellow fox\e[0m \d32\e[93mThe quick yellow fox\e[0m \d32\e[103mThe quick yellow fox\e[0m 
%echos% -e -n \e[0mOutput : \d32
%command%
%echos% -e -n \n
::pause & %echos% -e -n \n

set command=echos -e \\d32\\e[34mThe quick blue fox\\e[0m \\d32\\e[44mThe quick blue fox\\e[0m \\d32\\e[94mThe quick blue fox\\e[0m \\d32\\e[104mThe quick blue fox\\e[0m
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e \e[34mThe quick blue fox\e[0m \d32\e[44mThe quick blue fox\e[0m \d32\e[94mThe quick blue fox\e[0m \d32\e[104mThe quick blue fox\e[0m 
%echos% -e -n \e[0mOutput : \d32
%command%
%echos% -e -n \n
::pause & %echos% -e -n \n

set command=echos -e \\d32\\e[35mThe quick magenta fox\\e[0m \\d32\\e[45mThe quick magenta fox\\e[0m \\d32\\e[95mThe quick magenta fox\\e[0m \\d32\\e[105mThe quick magenta fox\\e[0m
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e \e[35mThe quick magenta fox\e[0m \d32\e[45mThe quick magenta fox\e[0m \d32\e[95mThe quick magenta fox\e[0m \d32\e[105mThe quick magenta fox\e[0m 
%echos% -e -n \e[0mOutput : \d32
%command%
%echos% -e -n \n
::pause & %echos% -e -n \n

set command=echos -e \\d32\\e[36mThe quick cyan fox\\e[0m \\d32\\e[46mThe quick cyan fox\\e[0m \\d32\\e[96mThe quick cyan fox\\e[0m \\d32\\e[106mThe quick cyan fox\\e[0m
%echos% -e Command: \d32\e[7m%command%\e[0m\d32
set command=echos -e \e[36mThe quick cyan fox\e[0m \d32\e[46mThe quick cyan fox\e[0m \d32\e[96mThe quick cyan fox\e[0m \d32\e[106mThe quick cyan fox\e[0m 
%echos% -e -n \e[0mOutput : \d32
%command%
%echos% -e -n \n
pause & %echos% -e -n \n

cls
%echos% -e \nBye!
timeout /t 2 >nul & cls
exit /B
