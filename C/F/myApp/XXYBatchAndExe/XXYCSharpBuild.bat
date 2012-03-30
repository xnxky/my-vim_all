@echo off
pushd %cd%\..
REM echo %cd%
for %%i in (*.sln) do  set solutionFile="%%i"
REM if exist %solutionFile% echo %solutionFile% 
devenv %solutionFile% /Build Debug 
popd
