::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: dirhunt/path.bat  (https://github.com/Luunarr/dirhunt) ::
:: by Lunar          (https://github.com/Luunarr)         ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
echo @echo off > dirhunt.bat
echo python "%~dp0\dirhunt.py" >> dirhunt.bat
setx PATH "%PATH%;%~dp0"
cls
pause
