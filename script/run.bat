@echo off
setlocal

:: Ubah ke folder 'plugin' relatif terhadap lokasi p.bat
set "InstallDir=%~dp0..\plugin\"

echo Memulai instalasi aplikasi secara silent...
echo.

:: --- Instalasi bcc.exe ---
echo Menginstal bcc.exe...
start /wait "" "%InstallDir%bcc.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
if %errorlevel% neq 0 (
    echo Gagal menginstal bcc.exe. Errorlevel: %errorlevel%
) else (
    echo bcc.exe berhasil diinstal.
)
echo.

:: --- Instalasi sapphire.exe ---
echo Menginstal sapphire.exe...
start /wait "" "%InstallDir%sapphire.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
if %errorlevel% neq 0 (
    echo Gagal menginstal sapphire.exe. Errorlevel: %errorlevel%
) else (
    echo sapphire.exe berhasil diinstal.
)
echo.

:: --- Instalasi rgu.exe ---
echo Menginstal rgu.exe...
start /wait "" "%InstallDir%rgu.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
if %errorlevel% neq 0 (
    echo Gagal menginstal rgu.exe. Errorlevel: %errorlevel%
) else (
    echo rgu.exe berhasil diinstal.
)
echo.

:: --- Instalasi mbl.exe ---
echo Menginstal mbl.exe...
start /wait "" "%InstallDir%mbl.exe" /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-
if %errorlevel% neq 0 (
    echo Gagal menginstal mbl.exe. Errorlevel: %errorlevel%
) else (
    echo mbl.exe berhasil diinstal.
)
echo.

:: --- Menyalin isi folder aex ke MediaCore ---
echo Menyalin isi 'aex' ke 'C:\Program Files\Adobe\Common\Plug-ins\7.0\MediaCore'...
set "SourceFolder=%InstallDir%aex"
set "DestFolder=C:\Program Files\Adobe\Common\Plug-ins\7.0\MediaCore"

xcopy "%SourceFolder%\*" "%DestFolder%\" /E /I /Y /H /C
if %errorlevel% neq 0 (
    echo Gagal menyalin isi folder aex. Errorlevel: %errorlevel%
) else (
    echo Semua isi folder aex berhasil disalin ke MediaCore.
)
echo.

echo Proses instalasi semua aplikasi telah selesai.
echo.

endlocal
