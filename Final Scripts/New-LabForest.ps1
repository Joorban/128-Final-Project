<#
        .SYNOPSIS
        Creates a new active directory forest for a Lab VM.

        .DESCRIPTION
        Creates a new active directory forest for a Lab VM.
	The Password is 'Password1'
	The Domain Name is 'int.acme.com'
	The NETBIOS is 'ACME'

        .INPUTS
        None. You cannot pipe objects to New-LabForest

        .OUTPUTS
        Returns information about the newly created forest.

        .EXAMPLE
        New-LabForest
    #>

Install-ADDSForest -DomainName int.acme.com -SafeModeAdministratorPassword Password1 -DomainNetBIOSName ACME -InstallDNS