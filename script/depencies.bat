@echo off
setlocal

:: Download file dari Hugging Face
curl -L -o 2024.zip "https://huggingface.co/cutefishae/AeNux-model/resolve/main/2024.zip"

:: Buat folder "2024" jika belum ada
if not exist "2024" (
    mkdir 2024
)

:: Ekstrak isi zip ke folder "2024"
powershell -Command "Expand-Archive -Path '2024.zip' -DestinationPath '2024' -Force"
