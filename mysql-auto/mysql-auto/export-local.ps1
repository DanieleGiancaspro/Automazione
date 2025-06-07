# === CONFIGURAZIONE ===
$User = "root"
$Password = "root"
$DbHost = "127.0.0.1"
$Port = 3306
$InitFolder = "init"

# Recupera i DB locali escludendo quelli di sistema
$databases = & "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" `
    -u"$User" -p"$Password" -h"$DbHost" -P"$Port" -e "SHOW DATABASES;" |
    Where-Object { $_ -notmatch "Database|information_schema|mysql|performance_schema|sys" }

if ($databases.Count -eq 0) {
    Write-Host "Nessun database da esportare."
    exit
}

Write-Host "Database disponibili per l'esportazione:"
for ($i = 0; $i -lt $databases.Count; $i++) {
    Write-Host "$($i + 1)) $($databases[$i])"
}

$choice = Read-Host "Seleziona il numero del database da esportare"
if ($choice -notmatch '^\d+$' -or $choice -lt 1 -or $choice -gt $databases.Count) {
    Write-Host "Selezione non valida. Esci."
    exit
}

$selectedDb = $databases[$choice - 1]
$Timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
$OutputFile = "$InitFolder/backup_$selectedDb.sql"
$TempFile = "temp_dump.sql"
$MySqlDumpPath = "C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe"

# Pulizia cartella init
if (!(Test-Path $InitFolder)) {
    New-Item -ItemType Directory -Path $InitFolder | Out-Null
}
Get-ChildItem $InitFolder -Filter *.sql | Remove-Item -Force

# Dump raw
& "$MySqlDumpPath" --user=$User --password=$Password --host=$DbHost --port=$Port --databases $selectedDb > $TempFile

# UTF-8 Clean
Get-Content $TempFile | Out-File -FilePath $OutputFile -Encoding utf8
Remove-Item $TempFile

if ((Test-Path $OutputFile) -and ((Get-Item $OutputFile).Length -gt 0)) {
    Write-Host "Esportazione completata: $OutputFile"
} else {
    Write-Host "Export fallito!"
}

# Comunica il nome del database al batch
Set-Content -Path ".\db_selected.txt" -Value $selectedDb

