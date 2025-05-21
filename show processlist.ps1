# Configuration
$outputPath = "mysql_processlist_log.txt"
$servername = "localhost"
$user = "root"
$password = "Ms199642-"

# Check and delete the log file if it exists
if (Test-Path $outputPath) {
    Remove-Item $outputPath
}

for ($i = 1; $i -le 10; $i++) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Write-Host "[$timestamp] Collecting processlist ($i/10)..."

    Add-Content -Path $outputPath -Value "`n===== $timestamp =====" 
    
    $cmd = "mysql -h $servername -u $user -p$password -e `"SHOW PROCESSLIST;`""
    $output = Invoke-Expression $cmd

    Add-Content -Path $outputPath -Value $output # append to file, so 2nd runs later extends the file

    Start-Sleep -Seconds 1
}

Write-Host "✅ Done. Output saved to: $outputPath"
