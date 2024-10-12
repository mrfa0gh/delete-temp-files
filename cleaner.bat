@echo off
:: التحقق من التشغيل كمسؤول
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo please run as admin.
    pause
    exit
)

:: مسار 1
del /f /s /q "C:\Windows\Temp\*"

:: مسار 2
del /f /s /q "C:\Users\Ghalwash\AppData\Local\Temp\*"

:: مسار 3
del /f /s /q "C:\Windows\Prefetch\*"

:: مسار 4
del /f /s /q "C:\Users\Ghalwash\Recent\*"

:: نهاية السكريبت
echo [!] Done 
pause
