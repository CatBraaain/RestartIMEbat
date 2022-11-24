@ECHO OFF
for /F "usebackq tokens=2" %%a in (
`tasklist /fi "IMAGENAME eq ctfmon.exe" ^| findstr "[0-9]"`) do (
taskkill /pid %%a
)
ctfmon.exe

pause