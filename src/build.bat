@echo off
setlocal
set SOURCE_FILE=main.cpp      
set OUTPUT_FILE=output.exe    
set COMPILER=g++              
set CFLAGS=-Wall -Werror -O2  
if %errorlevel% neq 0 (
    echo Error: Compilation failed.
    exit /b 1
)
if exist "%OUTPUT_FILE%" (
    echo Removing old executable...
    del "%OUTPUT_FILE%"
)
echo Compiling %SOURCE_FILE%...
%COMPILER% %CFLAGS% %SOURCE_FILE% -o %OUTPUT_FILE%
call :check_error
echo Build complete! Executable: %OUTPUT_FILE%
endlocal
exit /b 0
