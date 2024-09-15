@echo off
pip install -r "%~dp0requirements.txt"
set "directory=%~dp0"
if "%directory:~-1%"=="\" set "directory=%directory:~0,-1%"
setx PATH "%PATH%;%directory%"
echo @echo off > "%directory%ccdir.bat"
echo py "%directory%ccdir.py" %%* >> "%directory%ccdir.bat"
del setupPY.bat
del setupPYTHON.bat
