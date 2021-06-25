@echo off

set "folder=C:\Users\path\to\folder\"
set "prefix=_"

pushd "%folder%"
echo List of folders that should be deleted:
for /F "delims=" %%D in ('dir /B /AD ^| findstr /v "^%prefix%"') do (
   echo Removing Directory :: %%D
   rmdir %%D /s /q
)
