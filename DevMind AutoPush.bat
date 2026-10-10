@echo off
title DevMind — GitHub Auto-Push Watcher
color 0B
echo.
echo  ╔══════════════════════════════════════════════╗
echo  ║   🧠 DevMind — GitHub Auto-Push Watcher     ║
echo  ║   Every change auto-saves to GitHub          ║
echo  ╚══════════════════════════════════════════════╝
echo.
echo  Starting watcher... keep this window open!
echo.
powershell -ExecutionPolicy Bypass -File "C:\Users\ADMIN\OneDrive\Desktop\bob files\auto-push.ps1"
echo.
echo  Watcher stopped. Press any key to close.
pause >nul
