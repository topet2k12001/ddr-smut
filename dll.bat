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

rem register built-in DLLs from arcade data dump
echo;
echo Registering DLLs...
echo;
echo | set /p dummyName=Registering k-clvsd.dll...
regsvr32 /s com\k-clvsd.dll
echo done.
echo | set /p dummyName=Registering xactengine2_10.dll...
regsvr32 /s com\xactengine2_10.dll
echo done.
ping localhost -n 2 > nul
exit

rem references:

rem https://docs.microsoft.com/en-us/archive/blogs/david.wang/howto-detect-process-bitness
rem https://stackoverflow.com/a/4997011
rem https://ss64.com/nt/sleep.html
rem https://ss64.com/nt/timeout.html
rem https://stackoverflow.com/questions/25384358/batch-if-elseif-else
rem https://stackoverflow.com/questions/1262708/suppress-command-line-output
rem https://stackoverflow.com/a/19468559
