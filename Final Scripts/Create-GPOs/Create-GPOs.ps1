<#
        .SYNOPSIS
        Creates 4 basic Group Policy Objects.
	
        .DESCRIPTION
        Creates 4 basic Group Policy Objects.
	'MasterPasswordPolicy'
	'NoCommandLine'
	'NoPowershell'
	'NoRemovableDrive'

        .INPUTS
        None. You cannot pipe objects to Create-GPOs

        .OUTPUTS
        Returns information about Each GPO created.

        .EXAMPLE
        Create-GPOs
    #>

New-GPO -Name 'MasterPasswordPolicy'
New-GPO -Name 'NoCommandLine'
New-GPO -Name 'NoPowershell'
New-GPO -Name 'NoRemovableDrive'

Import-GPO -Backupid 96908830-CDAB-4BEE-8A53-EFDDAD200DE9  -TargetName 'MasterPasswordPolicy' -Path C:\Users\Administrator\Desktop
Import-GPO -Backupid 39FA0691-3A10-4C97-B574-3BB08E584D51  -TargetName 'NoCommandLine' -Path C:\Users\Administrator\Desktop
Import-GPO -Backupid E91481DC-40B3-4976-B4F1-15F0AEF47797  -TargetName 'NoPowershell' -Path C:\Users\Administrator\Desktop
Import-GPO -Backupid 93964D57-C72A-4B25-AEBA-D623EBBA56E2  -TargetName 'NoRemovableDrive' -Path C:\Users\Administrator\Desktop
