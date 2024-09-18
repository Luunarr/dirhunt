::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: dirhunt/path.bat  (https://github.com/Luunarr/dirhunt) ::
:: by Lunar          (https://github.com/Luunarr)         ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
setlocal
set "sdir=%~dp0Scripts"
if not exist "%sdir%" mkdir "%sdir%"
echo @echo off > "%SCRIPT_DIR%\dirhunt.bat"
echo python "%~dp0\dirhunt.py" %%* >> "%sdir%\dirhunt.bat"
move "%~f0" "%sdir%\"
del path.bat
cls
pause
