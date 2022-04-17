<#
        .SYNOPSIS
        Gets a sorted list of running services.
	Exports the list as a text file.

        .DESCRIPTION
        Gets a sorted list of running services.
	Exports the list as a text file.

        .INPUTS
        None. You cannot pipe objects to Get-RunningService

        .OUTPUTS
        Returns a list of running services, sorts them accordingly, and exports the list as a text file.

        .EXAMPLE
        Get-RunningService
    #>

get-service | sort-object status -descending | out-file -filepath C:\Users\Jorda\Desktop\Powershell