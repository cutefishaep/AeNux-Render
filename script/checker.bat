@echo off
set ZIP_FILE=2024.zip

if exist "%ZIP_FILE%" (
    echo File %ZIP_FILE% ada.
) else (
    echo File %ZIP_FILE% tidak ditemukan.
)
pause
