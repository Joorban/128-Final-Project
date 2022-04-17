<#
        .SYNOPSIS
        Gets all files edited in the last 24 hours.

        .DESCRIPTION
        Gets all files edited in the last 24 hours.
	Gets information about each file.

        .INPUTS
        None. You cannot pipe objects to Get-RecentFiles.

        .OUTPUTS
        Returns a list of all files edited/made in the last 24 hours along with file information.

        .EXAMPLE
        Get-RecentFiles
    #>

get-childitem -path D:\college\ -recurse | Where-object {($_.lastwritetime -gt (get-date).adddays(-1))}