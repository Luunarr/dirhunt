::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: dirhunt/path.bat  (https://github.com/Luunarr/dirhunt) ::
:: by Lunar          (https://github.com/Luunarr)         ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
(echo @echo off ^& echo python "%~dp0\dirhunt.py") > dirhunt.bat
setx path "%path%;%~dp0"
cls
del path.bat
cls
pause
