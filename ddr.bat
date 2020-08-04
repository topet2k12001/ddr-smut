::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyHcjLQlHcCWMKGO1CKwgzOf4+ueCrFkOaM8aX67Iw7qNYMQc/UvoepcpxUZ+vPlMLUkIPie7ag4grC5yt2eOC9CToQToRE/J4EI8HnZIlGDChTsvINVhlsYQ7zSz7C0=
::fBE1pAF6MU+EWH3eyHcjLQlHcCWMKGO1CKwgzOf4+ueCrFkOaM8aX67Iw7qNYMQc/UvoepcpxUZ+vPlMLUkIPie7ag4grC5yt2eOC9CToQToRE/J4EI8HnZIlGDChTsvINVhlsYQ7zOqnA==
::fBE1pAF6MU+EWH3eyHcjLQlHcCWMKGO1CKwgzOf4+ueCrFkOaM8aX67Iw7qNYMQc/UvoepcpxUZ+vPlMLUkIPie7ag4grC5yt2eOC9CToQToRE/J4EI8HnZIlGDChTsvINVhlsYQ7yKqnA==
::fBE1pAF6MU+EWH3eyHcjLQlHcCWMKGO1CKwgzOf4+ueCrFkOaM8aX67Iw7qNYMQc/UvoepcpxUZ+vPlMLUkIPie7ag4grC5yt2eOC9CToQToRE/J4EI8HnZIlGDChTsvINVhlsYQ7yKr6Fn6jaMcyDb6Rqxu
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJH6F+UcjFB9QXkqLP2Ta
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkoaHUrSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlXMbQs=
::ZQ05rAF9IAHYFVzEqQIUDCkUYAWXMmiyA6d8
::eg0/rx1wNQPfEVWB+kM9LVsJDCCmDiuWB6AS6+D+/Yo=
::fBEirQZwNQPfEVWB+kM9LVsJDCCmDiuWB6AS6+D+/Yo=
::cRolqwZ3JBvQF1fEqQIRPQ9bQQWWNWS0RrMT+qjo6v6Tq0MaFPcvOI7V3vSCIfUd6U3te5Ft8l5o+A==
::dhA7uBVwLU+EWFfL9SI=
::YQ03rBFzNR3SWATE+g0xSA==
::dhAmsQZ3MwfNWATE4E0gLQ8GR1XQbDvrZg==
::ZQ0/vhVqMQ3MEVWAtB9wMR5HLA==
::Zg8zqx1/OA3MEVWAtB9wJlRVLA==
::dhA7pRFwIByZRRmKu0NQ
::Zh4grVQjdCuDJGyX8VAjFDpaWAyNMnKGIrof/eX+4f6UnmA4c8MsYYHYmpCBN+4f5UTgZqoJ8kgauZlcTC5IehO/a08EqG1JimeKOdOZvRvydkyN9HQkHnZgyWbIiUs=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

rem Copyright 2020 topet2k12001

rem Licensed under the Apache License, Version 2.0 (the "License");
rem you may not use this file except in compliance with the License.
rem You may obtain a copy of the License at
rem 
rem     http://www.apache.org/licenses/LICENSE-2.0

rem Unless required by applicable law or agreed to in writing, software
rem distributed under the License is distributed on an "AS IS" BASIS,
rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
rem See the License for the specific language governing permissions and
rem limitations under the License.

rem start butterfly early and minimized
start /min "butterfly" butterfly.exe

rem delete existing Bemanitools and Spicetools files
echo | set /p dummyName=Deleting existing Bemanitools and Spiectools files...
del ddrhook.dll > nul 2>&1
del ddrio.dll > nul 2>&1
del ddrio-mm.dll > nul 2>&1
del ddrio-smx.dll > nul 2>&1
del eamio.dll > nul 2>&1
del geninput.dll > nul 2>&1
del unicorntail.dll > nul 2>&1
del maint.exe > nul 2>&1
del launcher.exe > nul 2>&1
del config.exe > nul 2>&1
del config.bat > nul 2>&1
del spice.exe > nul 2>&1
del spicecfg.exe > nul 2>&1
ping localhost -n 1 > nul
echo done.

rem unpack needed files
mkdir %LOCALAPPDATA%\tmp
move /Y tmp\*.* %LOCALAPPDATA%\tmp > nul 2>&1
rmdir /s /q tmp
mkdir %LOCALAPPDATA%\bt
move /Y bt\*.* %LOCALAPPDATA%\bt > nul 2>&1
rmdir /s /q bt
mkdir %LOCALAPPDATA%\st
move /Y st\*.* %LOCALAPPDATA%\st > nul 2>&1
rmdir /s /q st
ping localhost -n 1 > nul

rem show some messages to give time for butterfly to fully initiate
cls
echo;
echo ###############################################
echo; 
echo DDR Launcher
echo automation for setting up and launching DDR
echo written for DDR A20
echo written by topet2k12001
echo;
echo ###############################################
ping localhost -n 5 > nul
cls
echo;
echo ###############################################
echo; 
echo IMPORTANT: run the game at least once to
echo register a profile/card.
echo;
echo After registering, exit the game and run this
echo launcher again to run the game.
echo This will ensure that your profile/card is
echo properly initiated.
echo;
echo ###############################################
ping localhost -n 10 > nul

rem register DLLs
move /Y %LOCALAPPDATA%\tmp\01 dll.exe > nul 2>&1
dll.exe
rem delete temp file
del dll.exe > nul 2>&1
del tmp\01 > nul 2>&1

rem perform copy-paste operations on config files
cls
echo;
echo | set /p dummyName=Copying config files...
if not exist conf\nvram mkdir conf\nvram
if not exist conf\nvram\ea3-config.xml copy prop\eamuse-config.xml conf\nvram\ea3-config.xml
if not exist conf\nvram\coin.xml copy prop\coin.xml conf\nvram\coin.xml
if not exist conf\nvram\eacoin.xml copy prop\eacoin.xml conf\nvram\eacoin.xml
if not exist conf\nvram\testmode-v.xml copy prop\testmode-v.xml conf\nvram\testmode-v.xml
if not exist conf\raw mkdir conf\raw
ping localhost -n 1 > nul
echo done.

rem SQL script to import data to ddr_16_event_save_data as well as import user_id from ddr_16_profiles to it
echo | set /p dummyName=Checking the butterfly database...
move /Y %LOCALAPPDATA%\tmp\02 ddr.sql > nul 2>&1
move /Y %LOCALAPPDATA%\tmp\03 sqlite3.exe > nul 2>&1
sqlite3.exe butterfly.sqlite < ddr.sql
rem delete temp files
del ddr.sql > nul 2>&1
del %LOCALAPPDATA%\tmp\02 > nul 2>&1
del sqlite3.exe > nul 2>&1
del %LOCALAPPDATA%\tmp\03 > nul 2>&1
ping localhost -n 1 > nul
echo done.

rem back up gamemdx.dll
move /Y gamemdx.dll gamemdx.dll.bak > nul 2>&1
rem show warning and pause the script
cls
echo #############################################
echo; 
echo WARNING! WARNING! WARNING! WARNING! WARNING!
echo; 
echo The next step will overwrite your
echo game file/s:
echo;
echo 1. gamemdx.dll (at \contents)
echo;
echo This overwrite will happen with each load
echo of the game using ddr.exe!
echo;
echo I created a backup of the latest-previous 
echo version of the above file/s but it is still
echo a REQUIREMENT that you back up manually!
echo;
echo DDR.exe will now pause to allow you time to 
echo create a backup before continuing.
echo;
echo #############################################
pause

rem cab type selection
cls
echo;
echo Select DDR Cab Type/Mode
echo 1 Blue/White Cab Mode
echo 2 Gold Cab Mode
set /p mode="Type a number: "

IF /i %mode% == 1 goto blue
IF /i %mode% == 2 goto gold

:blue
rem copy modified gamemdx.dll (game crash at card screen fix)
cls
echo;
echo | set /p dummyName=Setting up...
move /Y %LOCALAPPDATA%\tmp\04 gamemdx.dll > nul 2>&1
rem delete temp files
del %LOCALAPPDATA%\tmp\04 > nul 2>&1
del %LOCALAPPDATA%\tmp\05 > nul 2>&1
rmdir /s /q %LOCALAPPDATA%\tmp
ping localhost -n 1 > nul
echo done.
rem continue the script
cls
echo;
echo Select game launcher and options
echo;
echo Spicetools
echo 1 HD (High Definition), full screen
echo 2 HD (High Definition), windowed
echo 3 SD (Standard Definition), full screen
echo 4 SD (Standard Definition), windowed
echo;
echo Bemanitools
echo 5 HD (High Definition), full screen
echo 6 HD (High Definition), windowed
echo 7 SD (Standard Definition), full screen
echo 8 SD (Standard Definition), windowed
echo;
set /p blueselected="Type a number: "

IF /i %blueselected% == 1 goto sthdfull
IF /i %blueselected% == 2 goto sthdwindowed
IF /i %blueselected% == 3 goto stsdfull
IF /i %blueselected% == 4 goto stsdwindowed
IF /i %blueselected% == 5 goto bthdfull
IF /i %blueselected% == 6 goto bthdwindowed
IF /i %blueselected% == 7 goto btsdfull
IF /i %blueselected% == 8 goto btsdwindowed

:gold
rem copy modified gamemdx.dll (Cab Type 6, sound offset from 105 to 90, game crash at card screen fix)
cls
echo;
echo | set /p dummyName=Setting up...
move /Y %LOCALAPPDATA%\tmp\05 gamemdx.dll > nul 2>&1
rem delete temp files
del %LOCALAPPDATA%\tmp\04 > nul 2>&1
del %LOCALAPPDATA%\tmp\05 > nul 2>&1
rmdir /s /q %LOCALAPPDATA%\tmp
ping localhost -n 1 > nul
echo done.
rem continue the script
cls
echo;
echo Select game resolution
echo;
echo Spicetools
echo 1 HD (High Definition), full screen
echo 2 HD (High Definition), windowed
echo;
echo Bemanitools
echo 3 HD (High Definition), full screen
echo 4 HD (High Definition), windowed
echo;
set /p goldselected="type a number: "

IF /i %goldselected% == 1 goto sthdfull
IF /i %goldselected% == 2 goto sthdwindowed
IF /i %goldselected% == 3 goto bthdfull
IF /i %goldselected% == 4 goto bthdwindowed

:sthdfull
cls
echo;
rem unpack Spicetools
echo | set /p dummyName=Unpacking Spicetools...
move /Y %LOCALAPPDATA%\st\01 spice.exe > nul 2>&1
move /Y %LOCALAPPDATA%\st\02 spicecfg.exe > nul 2>&1
rem delete temp files
rmdir /s /q %LOCALAPPDATA%\st > nul 2>&1
rmdir /s /q %LOCALAPPDATA%\bt > nul 2>&1
ping localhost -n 1 > nul
echo done.
echo;
echo Launching the game using Spicetools (HD, fullscreen)...
rem clear read-only attribute in the folder, sub-folder, and all files within
attrib -r *.* /s /d
ping localhost -n 2 > nul
start spice.exe -exec arkmdxp3.dll -k ddrhook.dll -netfixdisable -ddr -io -h 33554432
exit

:sthdwindowed
cls
echo;
rem unpack Spicetools
echo | set /p dummyName=Unpacking Spicetools...
move /Y %LOCALAPPDATA%\st\01 spice.exe > nul 2>&1
move /Y %LOCALAPPDATA%\st\02 spicecfg.exe > nul 2>&1
rem delete temp files
rmdir /s /q %LOCALAPPDATA%\st > nul 2>&1
rmdir /s /q %LOCALAPPDATA%\bt > nul 2>&1
ping localhost -n 1 > nul
echo done.
echo;
echo Launching the game using Spicetools (HD, windowed)...
rem clear read-only attribute in the folder, sub-folder, and all files within
attrib -r *.* /s /d
ping localhost -n 2 > nul
start spice.exe -exec arkmdxp3.dll -k ddrhook.dll -netfixdisable -ddr -io -h 33554432 -w
exit

:stsdfull
cls
echo;
rem unpack Spicetools
echo | set /p dummyName=Unpacking Spicetools...
move /Y %LOCALAPPDATA%\st\01 spice.exe > nul 2>&1
move /Y %LOCALAPPDATA%\st\02 spicecfg.exe > nul 2>&1
rem delete temp files
rmdir /s /q %LOCALAPPDATA%\st > nul 2>&1
rmdir /s /q %LOCALAPPDATA%\bt > nul 2>&1
ping localhost -n 1 > nul
echo done.
echo;
echo Launching the game using Spicetools (SD, fullscreen)...
rem clear read-only attribute in the folder, sub-folder, and all files within
attrib -r *.* /s /d
ping localhost -n 2 > nul
start spice.exe -exec arkmdxp3.dll -k ddrhook.dll -netfixdisable -ddr -io -h 33554432 -ddrsd/o
exit

:stsdwindowed
cls
echo;
rem unpack Spicetools
echo | set /p dummyName=Unpacking Spicetools...
move /Y %LOCALAPPDATA%\st\01 spice.exe > nul 2>&1
move /Y %LOCALAPPDATA%\st\02 spicecfg.exe > nul 2>&1
rem delete temp files
rmdir /s /q %LOCALAPPDATA%\st > nul 2>&1
rmdir /s /q %LOCALAPPDATA%\bt > nul 2>&1
ping localhost -n 1 > nul
echo done.
echo;
echo Launching the game using Spicetools (SD, windowed)...
rem clear read-only attribute in the folder, sub-folder, and all files within
attrib -r *.* /s /d
ping localhost -n 2 > nul
start spice.exe -exec arkmdxp3.dll -k ddrhook.dll -netfixdisable -ddr -io -h 33554432 -ddrsd/o -w
exit

:bthdfull
cls
echo;
rem unpack Bemanitools
echo | set /p dummyName=Unpacking Bemanitools...
move /Y %LOCALAPPDATA%\bt\01 config.bat > nul 2>&1
move /Y %LOCALAPPDATA%\bt\02 config.exe > nul 2>&1
move /Y %LOCALAPPDATA%\bt\03 ddrhook.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\04 ddrio.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\05 ddrio-mm.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\06 ddrio-smx.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\07 eamio.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\08 geninput.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\09 launcher.exe > nul 2>&1
move /Y %LOCALAPPDATA%\bt\10 unicorntail.dll > nul 2>&1
rem delete temp files
rmdir /s /q %LOCALAPPDATA%\st > nul 2>&1
rmdir /s /q %LOCALAPPDATA%\bt > nul 2>&1
ping localhost -n 1 > nul
echo done.
echo;
echo Launching the game using Bemanitools (HD, fullscreen)...
rem clear read-only attribute in the folder, sub-folder, and all files within
attrib -r *.* /s /d
ping localhost -n 2 > nul
start launcher.exe -ddr -io -netfixdisable -H 33554432 -K .\ddrhook.dll .\arkmdxp3.dll
exit

:bthdwindowed
cls
echo;
rem unpack Bemanitools
echo | set /p dummyName=Unpacking Bemanitools...
move /Y %LOCALAPPDATA%\bt\01 config.bat > nul 2>&1
move /Y %LOCALAPPDATA%\bt\02 config.exe > nul 2>&1
move /Y %LOCALAPPDATA%\bt\03 ddrhook.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\04 ddrio.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\05 ddrio-mm.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\06 ddrio-smx.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\07 eamio.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\08 geninput.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\09 launcher.exe > nul 2>&1
move /Y %LOCALAPPDATA%\bt\10 unicorntail.dll > nul 2>&1
rem delete temp files
rmdir /s /q %LOCALAPPDATA%\st > nul 2>&1
rmdir /s /q %LOCALAPPDATA%\bt > nul 2>&1
ping localhost -n 1 > nul
echo done.
echo;
echo Launching the game using Bemanitools (HD, windowed)...
rem clear read-only attribute in the folder, sub-folder, and all files within
attrib -r *.* /s /d
ping localhost -n 2 > nul
start launcher.exe -ddr -io -netfixdisable -H 33554432 -K .\ddrhook.dll .\arkmdxp3.dll -w
exit

:btsdfull
cls
echo;
rem unpack Bemanitools
echo | set /p dummyName=Unpacking Bemanitools...
move /Y %LOCALAPPDATA%\bt\01 config.bat > nul 2>&1
move /Y %LOCALAPPDATA%\bt\02 config.exe > nul 2>&1
move /Y %LOCALAPPDATA%\bt\03 ddrhook.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\04 ddrio.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\05 ddrio-mm.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\06 ddrio-smx.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\07 eamio.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\08 geninput.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\09 launcher.exe > nul 2>&1
move /Y %LOCALAPPDATA%\bt\10 unicorntail.dll > nul 2>&1
rem delete temp files
rmdir /s /q %LOCALAPPDATA%\st > nul 2>&1
rmdir /s /q %LOCALAPPDATA%\bt > nul 2>&1
ping localhost -n 1 > nul
echo done.
echo;
echo Launching the game using Bemanitools (SD, fullscreen)...
rem clear read-only attribute in the folder, sub-folder, and all files within
attrib -r *.* /s /d
ping localhost -n 2 > nul
start launcher.exe -ddr -io -netfixdisable -H 33554432 -K .\ddrhook.dll .\arkmdxp3.dll -o
exit

:btsdwindowed
cls
echo;
rem unpack Bemanitools
echo | set /p dummyName=Unpacking Bemanitools...
move /Y %LOCALAPPDATA%\bt\01 config.bat > nul 2>&1
move /Y %LOCALAPPDATA%\bt\02 config.exe > nul 2>&1
move /Y %LOCALAPPDATA%\bt\03 ddrhook.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\04 ddrio.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\05 ddrio-mm.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\06 ddrio-smx.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\07 eamio.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\08 geninput.dll > nul 2>&1
move /Y %LOCALAPPDATA%\bt\09 launcher.exe > nul 2>&1
move /Y %LOCALAPPDATA%\bt\10 unicorntail.dll > nul 2>&1
rem delete temp files
rmdir /s /q %LOCALAPPDATA%\st > nul 2>&1
rmdir /s /q %LOCALAPPDATA%\bt > nul 2>&1
ping localhost -n 1 > nul
echo done.
echo;aunching the game using Bemanitools (SD, windowed)...
rem clear read-only attribute in the folder, sub-folder, and all files within
attrib -r *.* /s /d
ping localhost -n 2 > nul
start launcher.exe -ddr -io -netfixdisable -H 33554432 -K .\ddrhook.dll .\arkmdxp3.dll -o -w
exit

rem references:

rem https://ss64.com/nt/sleep.html
rem https://ss64.com/nt/timeout.html
rem https://stackoverflow.com/a/19468559
rem https://ss64.com/nt/if.html
rem https://ss64.com/nt/else.html
rem https://ss64.com/nt/attrib.html
rem https://ss64.com/nt/syntax-variables.html
rem https://superuser.com/a/653955
rem https://superuser.com/a/1143475
rem https://stackoverflow.com/a/11643691
rem https://www.tutorialspoint.com/sqlite/sqlite_update_query.htm
rem https://www.tutorialspoint.com/sqlite/sqlite_select_query.htm
