@echo off
setlocal
cls

echo INIZIO AUTOMAZIONE COMPLETA...

REM Spostati nella cartella dello script
cd /d %~dp0

REM 1. Chiedi quale database esportare
powershell -ExecutionPolicy Bypass -File "%~dp0export-local.ps1"

REM 2. Leggi nome del database selezionato
set /p DBNAME=<db_selected.txt

REM 3. Aggiungi GRANT a fine del file SQL per evitare errori di accesso
powershell -Command "Add-Content -Path \"init\\backup_%DBNAME%.sql\" -Value \"CREATE USER IF NOT EXISTS 'root'@'%%' IDENTIFIED BY 'rootpassword';`r`nALTER USER 'root'@'%%' IDENTIFIED WITH mysql_native_password BY 'rootpassword';`r`nGRANT ALL PRIVILEGES ON *.* TO 'root'@'%%' WITH GRANT OPTION;`r`nFLUSH PRIVILEGES;\""


REM 4. Genera dinamicamente il file docker-compose.yml
(
echo version: '3.8'
echo.
echo services:
echo   mysql:
echo     image: mysql:8.0
echo     container_name: mysql-auto-compose
echo     ports:
echo       - "3309:3306"
echo     environment:
echo       MYSQL_ROOT_PASSWORD: rootpassword
echo       MYSQL_DATABASE: %DBNAME%
echo     command: --default-authentication-plugin=mysql_native_password
echo     volumes:
echo       - ./init:/docker-entrypoint-initdb.d
echo.
echo   backend:
echo     build:
echo       context: C:\\Users\\asus\\OneDrive\\Desktop\\ReactNativeProjects\\REACT_NATIVE\\REACT_NATIVE\\Backend\\Compro Oro - Sistema di Gestione Backend\\compro-oro
echo     container_name: comprooro-backend
echo     ports:
echo       - "8080:8080"
echo     depends_on:
echo       - mysql
echo.
echo   frontend:
echo     build:
echo       context: C:\\Users\\asus\\OneDrive\\Desktop\\ReactNativeProjects\\REACT_NATIVE\\REACT_NATIVE\\ComproOroApp
echo     container_name: comprooro-frontend
echo     ports:
echo       - "8081:8081"
echo     depends_on:
echo       - backend
echo     stdin_open: true
echo     tty: true
) > docker-compose.yml

REM 5. Ricrea i container
echo Ricreo i container...
docker compose down -v
docker compose up --build -d

REM 6. Info per l'utente
echo.
echo Contenitori avviati con successo!
echo ----------------------------------
echo Frontend React Native: http://localhost:8081
echo Backend Spring Boot:  http://localhost:8080
echo MySQL Database:       127.0.0.1:3309
echo     - utente: root
echo     - password: rootpassword

pause
