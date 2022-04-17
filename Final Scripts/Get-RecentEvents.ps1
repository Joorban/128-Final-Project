<#
        .SYNOPSIS
        Gets a list of the 50 most recent events from the eventlog.
	Outputs the list into an html file.

        .DESCRIPTION
        Gets a list of the 50 most recent events from the eventlog.
	Outputs the list into an html file.

        .INPUTS
        None. You cannot pipe objects to Get-RecentEvents

        .OUTPUTS
        Returns the events into the powershell console.

        .EXAMPLE
        Get-RecentEvents
    #>

Get-EventLog -LogName Security -Newest 50 | ConvertTo-Html | Out-File C:\Users\jorda\Desktop\RecentEvents.html