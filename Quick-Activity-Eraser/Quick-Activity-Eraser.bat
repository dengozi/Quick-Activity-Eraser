@echo off
:: Yönetici kontrolü
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo LUTFEN DOSYAYI YONETICI OLARAK CALISTIR.
    pause
    exit
)

echo [1/5] USN Journal temizleniyor...
fsutil usn deletejournal /d C:

echo [2/5] Prefetch klasörü temizleniyor (regedit izleri)...
del /f /s /q %SystemRoot%\Prefetch\REGEDIT*.pf >nul 2>&1

echo [3/5] RunMRU kayitlari siliniyor (Calistir gecmisi)...
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU" /f

echo [4/5] Son Kullanilan Dosyalar (Recent Items) siliniyor...
del /f /q "%AppData%\Microsoft\Windows\Recent\*" >nul 2>&1

echo [5/5] Islemler tamamlandi.
pause
