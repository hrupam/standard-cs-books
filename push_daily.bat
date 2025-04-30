@echo off
:: Get the current date in dd-MM-yyyy format using PowerShell
for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format dd-MM-yyyy"') do set commitDate=%%i

:: Create the commit message
set commitMsg=resource update - %commitDate%

:: Perform Git operations
echo Adding changes...
git add .

echo Committing changes...
git commit -m "%commitMsg%"

echo Pushing to remote...
git push

echo Done.
pause
