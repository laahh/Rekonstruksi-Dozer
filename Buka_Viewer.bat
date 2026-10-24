@echo off
rem Membuka web viewer Rekonstruksi Dozer CPP di browser.
rem Butuh Python (python.org) ATAU Node.js (nodejs.org) terpasang di komputer.
cd /d "%~dp0"
set PORT=8765
echo Menjalankan server lokal di http://localhost:%PORT% ...
echo Tutup jendela ini untuk menghentikan viewer.
start "" "http://localhost:%PORT%/index.html"
where python >nul 2>nul && (python -m http.server %PORT% & goto :eof)
where npx >nul 2>nul && (npx --yes http-server -p %PORT% -c-1 & goto :eof)
echo.
echo Python atau Node.js tidak ditemukan. Pasang salah satunya, lalu jalankan file ini lagi.
pause
