<#
        .SYNOPSIS
        Disables a user account in Active Directory.

        .DESCRIPTION
        Disables a user account in Active Directory.
        Prompts the user to enter an account name to be disabled.

	.PARAMETER Username
        Specifies the Active Directory user to disabled.

        .INPUTS
        None. You cannot pipe objects to Disable-User

        .OUTPUTS
        None. Disable-User does not generate any output.

        .EXAMPLE
        Disable-User
    #>

param (
	[Parameter(Mandatory = $true)][string]$Username
)
	Disable-AdAccount -identity $username
