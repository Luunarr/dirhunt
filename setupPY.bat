@echo off
pip install -r "%~dp0requirements.txt"
set "directory=%~dp0"
if "%directory:~-1%"=="\" set "directory=%directory:~0,-1%"
set "PATH=%PATH%;%directory%"
(
    echo @echo off
    echo py "%directory%ccdir.py" %%*
) > "%directory%ccdir.bat"
del "%~dp0setupPY.bat"
del "%~dp0setupPYTHON.bat"
setx PATH "%PATH%;%directory%"
