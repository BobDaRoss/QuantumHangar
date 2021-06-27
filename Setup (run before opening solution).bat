:: This script creates a symlink to the game binaries to account for different installation directories on different systems.

@echo off
set /p path="Please enter the folder location of your SpaceEngineersDedicated.exe: "

cd %~dp0
rmdir GameBinaries > nul 2>&1
mklink /J GameBinaries "%path%"
if errorlevel 1 goto Error
echo Done!

set /p path="Please enter the folder location of your Torch.Server.exe: "
cd %~dp0
rmdir TorchBinaries > nul 2>&1
mklink /J TorchBinaries "%path%"
if errorlevel 1 goto Error
echo Done!

set /p path="Please enter the folder location of your Nexus.dll: "
cd %~dp0
rmdir NexusBinaries > nul 2>&1
mklink /J NexusBinaries "%path%"
if errorlevel 1 goto Error
echo Done!

echo You can now open the plugin without issue.
goto EndFinal

:Error
echo An error occured creating the symlink.
goto EndFinal

:EndFinal
pause
