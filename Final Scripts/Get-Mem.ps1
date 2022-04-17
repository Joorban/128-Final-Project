<#
        .SYNOPSIS
        Finds the Total memory on the system and returns it.

        .DESCRIPTION
        Finds the Total memory on the system and returns it.
	The total memory will be returned in GB through a message.

        .INPUTS
        None. You cannot pipe objects to Get-Mem

        .OUTPUTS
        Get-Mem returns the total memory in GB from the current system

        .EXAMPLE
        Get-Mem

    #>
    $memory = (Get-CimInstance Win32_PhysicalMemory | Measure-Object -Property capacity -Sum).sum /1gb
    return "There is $memory gb of memory on this system!"
