# PowerShell Script to Disable Display 2 and 3

# Get all connected displays
$displays = Get-WmiObject -Namespace root\wmi -Class WmiMonitorBasicDisplayParams

# Check if more than one display is connected
if ($displays.Count -gt 1) {
    # Attempt to switch to the primary display only (this will effectively disable the other displays)
    DisplaySwitch.exe /internal
}
else {
    Write-Host "Only one display is detected."
}
