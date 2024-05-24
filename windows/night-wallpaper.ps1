Set-ItemProperty -Path 'HKCU:\Control Panel\Desktop\' -Name Wallpaper -Value "C:\Users\$env:USERNAME\Pictures\New Tab Wallpaper\tom-chen--h-OMkA5JTM-unsplash.jpg"
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters ,1 ,True
