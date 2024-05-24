schtasks /create /tn "ChangeWallpaper" /tr "powershell.exe -ExecutionPolicy Bypass -File 'C:\path\to\change-wallpaper.ps1'" /sc daily /st 10:00
