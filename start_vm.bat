@echo off
:menu
cls
echo Seleziona un'opzione:
echo 1. windows7
echo 2. windows10
echo 3. debian
echo.
set /p choice="Inserisci il numero corrispondente alla macchina da avviare: "

if "%choice%"=="1" goto opzione1
if "%choice%"=="2" goto opzione2
if "%choice%"=="3" goto opzione3

echo Scelta non valida. Premi un tasto per riprovare.
pause
goto menu

:opzione1
echo Hai selezionato l'opzione 1.
echo.
echo Sto avviando la macchina virtuale centos
powershell "Start-VM -Name 'windows7'"
pause
goto end

:opzione2
echo Hai selezionato l'opzione 2.
echo.
echo Sto avviando la macchina virtuale debian
powershell "Start-VM -Name 'windows10'"
pause
goto end

:opzione3
echo Hai selezionato l'opzione 3.
echo.
echo Sto avviando la macchina virtuale fedora
powershell "Start-VM -Name 'debian'"
pause
goto end

:end
