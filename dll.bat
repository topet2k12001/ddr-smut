::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJH6F+UcjFBxRTRbMNWi1Zg==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlTMbAs=
::ZQ05rAF9IAHYFVzEqQIUBDcUfgGFNXiuA6d8
::eg0/rx1wNQPfEVWB+kM9LVsJDCCuECuIA7IV+/z+/Yo=
::fBEirQZwNQPfEVWB+kM9LVsJDACOMHm/AbwP/O3pjw==
::cRolqwZ3JBvQF1fEqQICLRxdXxCHLnj6IpkwqO70/aqTqkhdU+Myfe8=
::dhA7uBVwLU+EWFfL9SI=
::YQ03rBFzNR3SWATE+g0xSA==
::dhAmsQZ3MwfNWATE4E0gLQ8GR1XQbDvrZg==
::ZQ0/vhVqMQ3MEVWAtB9wMR5HLA==
::Zg8zqx1/OA3MEVWAtB9wJlRVLA==
::dhA7pRFwIByZRRmKu0NQ
::Zh4grVQjdCuDJGyX8VAjFDpaWAyNMnKGIrof/eX+4f6UnmA4c8MsYYHYmpCBN+4f5UTgZqoJ8kgauZlcTC5IehO/a08EqG1JinOKJcyVvQihTEGF41gMCGZmjnPEzC0ybNZ7pscP32675Eif
::YB416Ek+ZW8=
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
