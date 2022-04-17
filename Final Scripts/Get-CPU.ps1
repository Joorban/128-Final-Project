    <#
        .SYNOPSIS
        Gets the top 10 Processes based on CPU usage.

        .DESCRIPTION
        Gets the top 10 Processes based on CPU usage.
	Ordered Highest to Lowest descending.

        .INPUTS
        None. You cannot pipe objects to Get-CPU.
        .OUTPUTS
        Returns the Processes in a table displaying the Name and CPU usage.

        .EXAMPLE
        Get-CPU
    #>

Get-Process | Sort-Object CPU -Descending | Select-Object Name,CPU -First 10