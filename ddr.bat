@echo off
echo;
echo | set /p dummyName=Checking if butterfly database exists...
ping localhost -n 3 > nul
if exist "butterfly.sqlite" (
  echo Database found!
  ping localhost -n 3 > nul
  cls
  echo;
  rem register the DLLs
  echo Registering DLLs...
  cls
  dll.exe
  rem SQL script to import data to ddr_16_event_save_data as well as import user_id from ddr_16_profiles to it
  sqlite3.exe butterfly.sqlite < ddr_16_event_save_data.sql
  echo;
  rem start butterfly and the game
  echo Starting butterfly local server and starting the game...let's D-D-R!
  ping localhost -n 3 > nul
  cls
  start butterfly.exe
  ping localhost -n 20 > nul
  start spice.exe -ddr -io -netfixdisable -h 33554432 -k ddrhook.dll arkmdxp3.dll
  exit
) else (
  echo Database NOT found!
  ping localhost -n 3 > nul
  cls
  echo;
  rem force user to run the game at least once
  echo IMPORTANT: run the game at least once to register a profile and be able to access all A20 songs in your succeeding game sessions!
  ping localhost -n 10 > nul
  cls
  echo;
  echo Registering DLLs...
  cls
  dll.exe
  echo;
  echo Starting butterfly local server and starting the game...let's D-D-R!
  ping localhost -n 3 > nul
  cls
  start butterfly.exe
  ping localhost -n 20 > nul
  start spice.exe -ddr -io -netfixdisable -h 33554432 -k ddrhook.dll arkmdxp3.dll
)
exit

rem references:

rem https://stackoverflow.com/a/11643691
rem https://www.tutorialspoint.com/sqlite/sqlite_update_query.htm
rem https://www.tutorialspoint.com/sqlite/sqlite_select_query.htm
rem https://ss64.com/nt/sleep.html
rem https://ss64.com/nt/timeout.html
rem https://stackoverflow.com/a/19468559
rem https://ss64.com/nt/if.html
rem https://ss64.com/nt/else.html
