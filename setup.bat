::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: dirhunt/setup.bat (https://github.com/Luunarr/dirhunt) ::
:: by Lunar          (https://github.com/Luunarr)         ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

@echo off
pip install -r "requirements.txt"
cls
python dirhunt.py -h
pause
del setup.bat
cmd
