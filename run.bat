@echo off
cd /d %~dp0
if not exist out mkdir out
dir /s /b src\*.java > sources.txt
javac -d out @sources.txt || exit /b 1
if "%1"=="test" (java -cp out ivi.test.IviTests) else if "%1"=="shots" (java -Djava.awt.headless=true -cp out ivi.test.ScreenshotTool screenshots) else (java -cp out ivi.ui.MainApp)
