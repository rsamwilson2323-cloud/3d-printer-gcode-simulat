@echo off
title Remix - 3D Printer GCode Simulator
color 0A

echo ===============================================
echo      Remix - 3D Printer GCode Simulator
echo ===============================================
echo.

cd /d "%~dp0"

:: Check Node.js
node --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Node.js is not installed.
    echo.
    echo Download it from:
    echo https://nodejs.org/
    pause
    exit /b
)

echo.
echo Starting local web server...
echo.

npx serve .

echo.
pause