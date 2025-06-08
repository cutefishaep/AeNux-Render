@echo off
setlocal

:: Download file dari Hugging Face - 2024.zip
curl -L -o 2024.zip "https://huggingface.co/cutefishae/AeNux-model/resolve/main/2024.zip"

:: Buat folder "2024" jika belum ada
if not exist "2024" (
    mkdir 2024
)

:: Ekstrak isi zip ke folder "2024"
powershell -Command "Expand-Archive -Path '2024.zip' -DestinationPath '2024' -Force"

:: Download file plugin.zip
curl -L -o plugin.zip "https://huggingface.co/cutefishae/AeNux-model/resolve/main/plugin.zip"

:: Buat folder "plugin" jika belum ada
if not exist "plugin" (
    mkdir plugin
)

:: Ekstrak isi zip ke folder "plugin"
powershell -Command "Expand-Archive -Path 'plugin.zip' -DestinationPath 'plugin' -Force"

:: Buat folder After Effects dan MediaCore jika belum ada
if not exist "C:\Program Files\Adobe\Adobe After Effects 2024\Support Files" (
    mkdir "C:\Program Files\Adobe\Adobe After Effects 2024\Support Files"
)

if not exist "C:\Program Files\Adobe\Common\Plug-ins\7.0\MediaCore" (
    mkdir "C:\Program Files\Adobe\Common\Plug-ins\7.0\MediaCore"
)

endlocal
