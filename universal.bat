@Echo off
SET main=sprayuniversal.ps1
for /f "delims=" %%a in ('powershell -ExecutionPolicy Bypass -File "%~dp0%startup%" "%~dp0%startup%" "%~dp0%main%"') do set "args=%%a"
powershell -ExecutionPolicy Bypass -File "%~dp0%main%" %args%