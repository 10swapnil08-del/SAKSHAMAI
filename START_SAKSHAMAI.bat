@echo off
setlocal
cd /d "%~dp0frontend"

echo ==============================================
echo          SAKSHAMAI - WEB APP STARTER
echo ==============================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed on this PC.
  echo Please install Node.js LTS, then run this file again.
  echo.
  pause
  exit /b 1
)

where npm >nul 2>nul
if errorlevel 1 (
  echo npm is not available with Node.js.
  echo Please reinstall Node.js LTS, then run this file again.
  echo.
  pause
  exit /b 1
)

echo Installing frontend dependencies (first run only)...
call npm install
if errorlevel 1 (
  echo.
  echo Dependency installation failed. Check your internet connection and try again.
  pause
  exit /b 1
)

echo.
echo Starting SakshamAI...
start "SakshamAI Browser" cmd /c "timeout /t 3 /nobreak >nul & start http://localhost:5173"
call npm run dev -- --host 127.0.0.1

pause
