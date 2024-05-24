# Define the path to monitor and the log file path
$networkDrivePath = "\\Path\To\Network\Drive"
$logFilePath = "C:\Path\To\Log\File.log"

# Create a FileSystemWatcher object
$watcher = New-Object System.IO.FileSystemWatcher
$watcher.Path = $networkDrivePath
$watcher.IncludeSubdirectories = $true
$watcher.EnableRaisingEvents = $true

# Define the action to take on file change events
$action = {
    $eventDetails = "File: $($event.SourceEventArgs.FullPath) - ChangeType: $($event.SourceEventArgs.ChangeType) - Time: $(Get-Date)"
    Add-Content -Path $logFilePath -Value $eventDetails
}

# Register events for different change types
$createdEvent = Register-ObjectEvent -InputObject $watcher -EventName Created -Action $action
$changedEvent = Register-ObjectEvent -InputObject $watcher -EventName Changed -Action $action
$deletedEvent = Register-ObjectEvent -InputObject $watcher -EventName Deleted -Action $action
$renamedEvent = Register-ObjectEvent -InputObject $watcher -EventName Renamed -Action $action

# Keep the script running to continue monitoring
Write-Host "Monitoring file changes in $networkDrivePath. Press [Enter] to exit."
[Console]::ReadLine()

# Unregister events and dispose the watcher when done
Unregister-Event -SubscriptionId $createdEvent.Id
Unregister-Event -SubscriptionId $changedEvent.Id
Unregister-Event -SubscriptionId $deletedEvent.Id
Unregister-Event -SubscriptionId $renamedEvent.Id
$watcher.Dispose()
