::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: dirhunt/path.bat  (https://github.com/Luunarr/dirhunt) ::
:: by Lunar          (https://github.com/Luunarr)         ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
setlocal
set "SCRIPT_DIR=%~dp0Scripts"
if not exist "%SCRIPT_DIR%" mkdir "%SCRIPT_DIR%"
echo @echo off > "%SCRIPT_DIR%\dirhunt.bat"
echo python "%~dp0\dirhunt.py" %%* >> "%SCRIPT_DIR%\dirhunt.bat"
move "%~f0" "%SCRIPT_DIR%\"
set "NEW_PATH=%PATH%;%SCRIPT_DIR%"
setx /M PATH "%NEW_PATH%"
echo %NEW_PATH% > "%SCRIPT_DIR%\path_check.txt"
cls
pause
