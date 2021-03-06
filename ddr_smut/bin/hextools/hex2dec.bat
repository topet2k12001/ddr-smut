@echo off

:toDec hex dec -- convert a hexadecimal number to decimal
::             -- hex [in]      - hexadecimal number to convert
::             -- dec [out,opt] - variable to store the converted decimal number in
:$created 20091203 :$changed 20091203 :$categories Arithmetic,Encoding
:$source https://www.dostips.com
SETLOCAL
set /a dec=0x%~1
( ENDLOCAL & REM RETURN VALUES
    IF "%~2" NEQ "" (SET %~2=%dec%) ELSE ECHO.%dec%
)
EXIT /b
