rem Copyright [yyyy] [name of copyright owner]

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

@echo off

rem register built-in DLLs from arcade data dump
echo;
echo Registering DLLs...
ping localhost -n 3 > nul
echo;
echo | set /p dummyName=Registering k-clvsd.dll...
regsvr32 /s com\k-clvsd.dll
ping localhost -n 2 > nul
echo done.
ping localhost -n 1 > nul
echo | set /p dummyName=Registering xactengine2_10.dll...
regsvr32 /s com\xactengine2_10.dll
ping localhost -n 2 > nul
echo done.
echo;
ping localhost -n 1 > nul
echo Setting up Bemanitools DLLs...
ping localhost -n 3 > nul
cls

rem register DLLs from Bemanitools 5.31
if /i %PROCESSOR_ARCHITECTURE% == amd64 goto 64bit
if /i %PROCESSOR_ARCHITEW6432% == amd64 goto 64bit
if /i %PROCESSOR_ARCHITECTURE% == x86 goto 32bit

:64bit
echo;
echo System is running a 64-bit Operating System.
echo;
echo | set /p dummyName=Deleting existing copies of DLLs...
del ddr*.dll > nul 2>&1
del eamio.dll > nul 2>&1
del geninput.dll > nul 2>&1
del unicorntail.dll > nul 2>&1
ping localhost -n 2 > nul
echo done.
ping localhost -n 2 > nul
echo;
echo | set /p dummyName=Copying 64-bit DLLs...
ping localhost -n 2 > nul
echo;
7z e bemanitools_x64.7z
echo;
echo done.
goto commonexit

:32bit
echo;
echo Systm is running a 32-bit Operating System.
echo;
echo | set /p dummyName=Deleting existing copies of DLLs...
del ddr*.dll > nul 2>&1
del eamio.dll > nul 2>&1
del geninput.dll > nul 2>&1
del unicorntail.dll > nul 2>&1
ping localhost -n 2 > nul
echo done.
ping localhost -n 2 > nul
echo;
echo | set /p dummyName=Copying 32-bit DLLs...
ping localhost -n 2 > nul
echo;
7z e bemanitools_x86.7z
echo;
echo done.
goto commonexit

:commonexit
echo;
echo Exiting...
del bemanitools_x64.7z > nul 2>&1
del bemanitools_x75.7z > nul 2>&1
del 7z.dll > nul 2>&1
del 7z.exe > nul 2>&1
ping localhost -n 5 > nul
exit

rem references:

rem https://docs.microsoft.com/en-us/archive/blogs/david.wang/howto-detect-process-bitness
rem https://stackoverflow.com/a/4997011
rem https://ss64.com/nt/sleep.html
rem https://ss64.com/nt/timeout.html
rem https://stackoverflow.com/questions/25384358/batch-if-elseif-else
rem https://stackoverflow.com/questions/1262708/suppress-command-line-output
rem https://stackoverflow.com/a/19468559
