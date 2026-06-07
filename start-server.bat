@echo off
cd /d "%~dp0"
echo Compiling...
javac -encoding UTF-8 -cp "lib\mysql-connector-j-8.0.33.jar" -d backend backend\main.java
if errorlevel 1 (
    echo Compile FAILED!
    pause
    exit /b
)
echo Starting server, enter MySQL password below...
java -cp "lib\mysql-connector-j-8.0.33.jar;backend" main
echo.
echo Exit code: %errorlevel%
pause
