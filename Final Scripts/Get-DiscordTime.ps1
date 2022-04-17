<#
        .SYNOPSIS
        Gets the total run time of the Discord application.

        .DESCRIPTION
        Gets the total run time of the Discord application.
	The information is displayed on a table.

        .INPUTS
        None. You cannot pipe objects to Get-DiscordTime

        .OUTPUTS
        Returns the total run time of Discord.
	If any other Discord processes are running, it will return them as well.

        .EXAMPLE
        Get-DiscordTime
    #>

        $Discord = Get-Process discord |
        Format-Table ProcessName, @{Label="TotalRunTime"; Expression={(Get-Date) - $_.StartTime}}
        return $Discord