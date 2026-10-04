@echo off
chcp 65001 >nul
title Primazos Underground
cd /d "%~dp0"
cls
echo.
echo   ==========================================
echo      Se está actualizando el ModPack :)
echo      No cierres esta ventana, tardará poco.
echo   ==========================================
echo.
set "JAVA="
for /d %%D in ("%APPDATA%\ModrinthApp\meta\java_versions\zulu25*") do if exist "%%D\bin\java.exe" set "JAVA=%%D\bin\java.exe"
if not defined JAVA set "JAVA=java"
"%JAVA%" -jar "%~dp0packwiz-installer-bootstrap.jar" -g -s client https://raw.githubusercontent.com/ATorada/primazos-pack/main/pack.toml >> "%~dp0packwiz-update.log" 2>&1
