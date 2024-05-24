# Get all connected displays
$displays = Get-PnpDevice -Class Monitor

# Loop through each display
foreach ($display in $displays) {
    # Check if the display is disabled
    if ($display.Status -eq "Error") {
        # Try to enable the display
        $instanceId = $display.InstanceId
        Enable-PnpDevice -InstanceId $instanceId -Confirm:$false
    }
}

# Refresh the display configuration
Invoke-Expression "DisplaySwitch.exe /extend"
