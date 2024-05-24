$apps = @("C:\Users\$env:USERNAME\AppData\Local\Programs\obsidian\Obsidian.exe",
 "explorer.exe")
foreach ($app in $apps) {
    Start-Process -FilePath $app
}

Start-Process -FilePath $app -ArgumentList "https://hikaritadashi.neocities.org/lab"
# To start the Windows Clock app
Start-Process "explorer.exe" "shell:Appsfolder\Microsoft.WindowsAlarms_8wekyb3d8bbwe!App"
