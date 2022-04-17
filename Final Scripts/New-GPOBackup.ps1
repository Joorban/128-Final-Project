<#
        .SYNOPSIS
        Creates a backup GPO with the chosen name.

        .DESCRIPTION
        Creates a backup GPO with the chosen name.
        Takes any existing GPO and backs it up to the desktop.

        .INPUTS
        None. You cannot pipe objects to New-GPOBackup

        .OUTPUTS
        Returns information about the GPO backup that was created.

        .EXAMPLE
        New-GPOBackup
    #>

param (
	[parameter(mandatory = $true)]$gponame
)
	Backup-Gpo -Name $gponame -Path .\Desktop\

