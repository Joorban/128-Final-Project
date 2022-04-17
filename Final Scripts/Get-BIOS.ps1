<#
        .SYNOPSIS
        Gets the BIOS info of a remote computer.

        .DESCRIPTION
        Adds a file name extension to a supplied name.
        Takes any strings for the file name or extension.

        .PARAMETER ComputerName
        Specifies the computer to be remoted into.

        .INPUTS
        None. You cannot pipe objects to Get-BIOS

        .OUTPUTS
        Returns information about the BIOS of the specified computer.

        .EXAMPLE
        Get-BIOS
    #>

param (
	[Parameter(Mandatory = $True)][string]$Computername
)

Invoke-Command -ComputerName $ComputerName -ScriptBlock { Get-ComputerInfo -Property *BIOS* }