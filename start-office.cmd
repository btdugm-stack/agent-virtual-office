@echo off
REM ============================================================
REM  Agent Virtual Office (KbWen) - Windows launcher
REM  Pixel-art office that visualizes your coding agents.
REM ============================================================
setlocal

set "AVO_DIR=%USERPROFILE%\Projects\agent-virtual-office"
set "PORT=5174"

if not exist "%AVO_DIR%" (
  echo [ERROR] Folder tidak ditemukan: %AVO_DIR%
  echo Clone dulu: git clone https://github.com/KbWen/agent-virtual-office.git
  exit /b 1
)

cd /d "%AVO_DIR%"

echo.
echo  Agent Virtual Office
echo  --------------------
echo  Buka di browser: http://localhost:%PORT%
echo  (Tekan Ctrl+C di jendela ini untuk mematikan)
echo.

REM --no-host = localhost only (menghindari prompt Windows Firewall)
npm run dev -- --no-host --port=%PORT%

endlocal
