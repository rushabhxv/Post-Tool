@echo off
set "version=0.3"
title Post Tool
goto :Start


:Start
cls
echo.========================================================================================
echo.
echo.	Press [1] for Apps
echo.	Press [2] for Drivers
echo.	Press [3] for Runtimes
echo.	Press [X] to close the application
echo.
echo.========================================================================================
echo.
echo.Credit = Rushabh Patil
echo.
echo.========================================================================================
choice /C:123X /N /M "Enter Your Choice: "
if errorlevel == 4 goto :Quit
if errorlevel == 3 goto :Rs
if errorlevel == 2 goto :Drv
if errorlevel == 1 goto :Apps

:Apps
cls
echo.========================================================================================
echo.
echo.	Press [1] for Browser List
echo.	Press [2] for Game Launchers
echo.	Press [3] for Entertainment Apps
echo.	Press [4] for Miscellaneous
echo.	Press [X] to go back
echo.
echo.========================================================================================
echo.
echo.Credit = Rushabh Patil
echo.
echo.========================================================================================
choice /C:1234X /N /M "Enter Your Choice: "
if errorlevel == 5 goto :Start
if errorlevel == 4 goto :ms
if errorlevel == 3 goto :ea
if errorlevel == 2 goto :Gl
if errorlevel == 1 goto :Br

:Br
cls
echo.========================================================================================
echo.
echo.	Press [1] to install Google Chrome
echo.	Press [2] to install Brave Browser
echo.	Press [3] to install Edge
echo.	Press [4] to install OperaGX
echo.	Press [X] to go back
echo.
echo.========================================================================================
echo.
echo.Credit = Rushabh Patil
echo.
echo.========================================================================================
choice /C:1234X /N /M "Enter Your Choice: "
if errorlevel == 5 goto :Apps
if errorlevel == 4 goto :GX
if errorlevel == 3 goto :MSE
if errorlevel == 2 goto :BB
if errorlevel == 1 goto :CG

:CG
cls
echo.========================================================================================
echo.	Press [Y] to install Google Chrome
echo.	Press [X] to go back
echo.========================================================================================
echo.
echo.Credit = Rushabh Patil
echo.
echo.========================================================================================
choice /C:YX /N /M "Enter Your Choice: "
if errorlevel == 2 goto :br
if errorlevel == 1 goto :installGC

:installGC
winget install --id=Google.Chrome  -e
cls
goto :Apps

:BB
cls
echo.========================================================================================
echo.
echo.	Press [Y] to install Brave
echo.	Press [X] to go back
echo.
echo.========================================================================================
choice /C:YX /N /M "Enter Your Choice: "
if errorlevel == 2 goto :br
if errorlevel == 1 goto :installBB

:installBB
winget install --id=BraveSoftware.BraveBrowser  -e
cls
goto :Apps

:MSE
cls
echo.========================================================================================
echo.
echo.	Press [Y] to install Edge
echo.	Press [X] to go back
echo.
echo.========================================================================================
choice /C:YX /N /M "Enter Your Choice: "
if errorlevel == 2 goto :br
if errorlevel == 1 goto :installMS

:installMS
winget install --id=Microsoft.Edge  -e
cls
goto :Apps

:GX
cls
echo.========================================================================================
echo.
echo.	Press [Y] to install OperaGX
echo.	Press [X] to go back
echo.
echo.========================================================================================
choice /C:YX /N /M "Enter Your Choice: "
if errorlevel == 2 goto :br
if errorlevel == 1 goto :installGX

:installGX
winget install --id=Opera.OperaGX  -e
cls
goto :Apps

:Drv
cls
echo.========================================================================================
echo.
echo.	Press [1] to install Nvidia Drivers
echo.	Press [2] to go back
echo.
echo.========================================================================================
echo.
echo.Credit = Rushabh Patil
echo.
echo.========================================================================================
choice /C:1X /N /M "Enter Your Choice: "
if errorlevel == 2 goto :Start
if errorlevel == 1 goto :nvd

:nvd
cls
timeout 10
"bin/NVCleanstall_1.13.0.exe"
cls
goto :Start

:Rs
cls
timeout 5
@echo off
CD /d %~dp0

echo.
echo Microsoft Visual C++ All-In-One Runtimes by W1zzard @ TechPowerUp
echo https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/
echo.
echo Installing runtime packages...

set IS_X64=0 && if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set IS_X64=1) else (if "%PROCESSOR_ARCHITEW6432%"=="AMD64" (set IS_X64=1))

if "%IS_X64%" == "1" goto X64

echo 2005...
start /wait bin\VS\vcredist2005_x86.exe /q

echo 2008...
start /wait bin\VS\vcredist2008_x86.exe /qb

echo 2010...
start /wait bin\VS\vcredist2010_x86.exe /passive /norestart

echo 2012...
start /wait bin\VS\vcredist2012_x86.exe /passive /norestart

echo 2013...
start /wait bin\VS\vcredist2013_x86.exe /passive /norestart

echo 2015, 2017 ^& 2019...
start /wait bin\VS\vcredist2015_2017_2019_2022_x86.exe /passive /norestart

goto END

:X64

echo 2005...
start /wait bin\VS\vcredist2005_x86.exe /q
start /wait bin\VS\vcredist2005_x64.exe /q

echo 2008...
start /wait bin\VS\vcredist2008_x86.exe /qb
start /wait bin\VS\vcredist2008_x64.exe /qb

echo 2010...
start /wait bin\VS\vcredist2010_x86.exe /passive /norestart
start /wait bin\VS\vcredist2010_x64.exe /passive /norestart

echo 2012...
start /wait bin\VS\vcredist2012_x86.exe /passive /norestart
start /wait bin\VS\vcredist2012_x64.exe /passive /norestart

echo 2013...
start /wait bin\VS\vcredist2013_x86.exe /passive /norestart
start /wait bin\VS\vcredist2013_x64.exe /passive /norestart

echo 2015, 2017 ^& 2019 ^& 2022...
start /wait bin\VS\vcredist2015_2017_2019_2022_x86.exe /passive /norestart
start /wait bin\VS\vcredist2015_2017_2019_2022_x64.exe /passive /norestart

goto END

:END

echo.
echo Installation completed successfully
timeout 5
cls
goto :Start

:Gl
cls
echo.========================================================================================
echo.
echo.	Press [1] to install Steam
echo.	Press [2] to install legendary(Epic Games alternatives)
echo.	Press [3] to install Epicgames
echo.	Press [X] to go back
echo.
echo.========================================================================================
echo.
echo.Credit = Rushabh Patil
echo.
echo.========================================================================================
choice /C:123X /N /M "Enter Your Choice: "
if errorlevel == 4 goto :Apps
if errorlevel == 3 goto :EG
if errorlevel == 2 goto :legendary
if errorlevel == 1 goto :steam

:steam
cls
timeout 5
winget install --id=Valve.Steam  -e
cls
goto :GL

:legendary
cls
timeout 5
mv "bin/legendary.exe" %WINDIR%
cls
goto :GL

:EG
cls
timeout 5
winget install --id=EpicGames.EpicGamesLauncher  -e
cls
goto :GL

:ea
cls
echo.========================================================================================
echo.
echo.	Press [1] to install Netflix
echo.	Press [2] to install Amazon Prime Video
echo.	Press [3] to install Disney+ hotstar
echo.	Press [X] to go back
echo.
echo.========================================================================================
echo.
echo.Credit = Rushabh Patil
echo.
echo.========================================================================================
choice /C:123X /N /M "Enter Your Choice: "
if errorlevel == 4 goto :Apps
if errorlevel == 3 goto :dh
if errorlevel == 2 goto :pv
if errorlevel == 1 goto :nt

:nt
cls
timeout 5
winget install --id=netflix -e
cls
goto :ea

:pv
cls
timeout 5
winget install amazon
cls
goto :ea

:dh
cls
timeout 5
winget install disney
cls
goto :ea

:ms
cls
echo.========================================================================================
echo.
echo.	Press [1] to install 7zip
echo.
echo.========================================================================================
echo.
echo.Credit = Rushabh Patil
echo.
echo.========================================================================================
choice /C:1X /N /M "Enter Your Choice: "
if errorlevel == 2 goto :Apps
if errorlevel == 1 goto :7z

:7z
cls
timeout 5
winget install --id=7zip.7zip  -e
cls
goto :ms