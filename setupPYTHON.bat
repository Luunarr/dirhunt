@echo off
pip install -r "%~dp0requirements.txt"
set "directory=%~dp0"
if "%directory:~-1%"=="\" set "directory=%directory:~0,-1%"
set "PATH=%PATH%;%directory%"
echo @echo off > "%directory%ccdir.bat"
echo python "%directory%ccdir.py" %%* >> "%directory%ccdir.bat"
del "%directory%setupPY.bat"
del "%directory%setupPYTHON.bat"
setx PATH "%PATH%;%directory%"