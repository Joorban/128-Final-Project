<#
        .SYNOPSIS
        Gets a list of all virtual machines on the system and sorts them by CPU usage.

        .DESCRIPTION
        Gets a list of all virtual machines on the system and sorts them by CPU usage.
	Only lists virtual machines that are currently running. 

        .INPUTS
        None. You cannot pipe objects to Get-VMCPU

        .OUTPUTS
        Returns a list of all the virtual machines ordered by CPU usage.
	Dispalys the VM Name, CPU, Memory Usage, and Uptime.

        .EXAMPLE
        Get-VMCPU
    #>

get-vm | Where-Object {$_.State -EQ "running"} | sort-object -property CPUUSAGE -descending | Format-Table  -Property Name,CPUUsage,MemoryAssigned,Uptime