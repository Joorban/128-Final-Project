<#
        .SYNOPSIS
        Gets the total remaining storage across all drives on the system.

        .DESCRIPTION
        Gets the total remaining storage across all drives on the system.
	The value is shown in GB.

        .INPUTS
        None. You cannot pipe objects to Get-FreeStorage

        .OUTPUTS
        Returns a message showing the total free storage in GB.

        .EXAMPLE
        Get-FreeStorage
    #>

    $Drives = Get-PSDrive -PSProvider FileSystem
    foreach ($drive in $Drives.Free) {
        $freeGB += [math]::round(($drive / 1e+9)) 
    }
    return "You have a total of $freeGB GB of space remaining!"