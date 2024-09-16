@echo off
setlocal

color 0A

:CHOICE
echo.
echo **Choose if you want to modify the PATH for:**
echo 1 - Only for you (current user)
echo 2 - For all users (requires admin rights)
set /p option="Your choice (1 or 2): "

if "%option%"=="1" goto USER_PATH
if "%option%"=="2" goto SYSTEM_PATH
color 0C 
echo **Invalid choice. Please enter 1 or 2.**
goto CHOICE

:USER_PATH
set /p dirhunt="Please enter the path to dirhunt.py: "
setx PATH "%PATH%;%dirhunt%"
color 0A  
echo **PATH updated for the current user with:** %dirhunt%.
goto END

:SYSTEM_PATH
set /p dirhunt="Please enter the path to dirhunt.py: "
setx PATH "%PATH%;%dirhunt%" /M
color 0A 
echo **PATH updated for all users with:** %dirhunt%.
goto END

:END
echo.
echo **Operation completed.**
pause
