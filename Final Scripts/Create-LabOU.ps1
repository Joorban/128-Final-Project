<#
        .SYNOPSIS
        Creates an Organizational Unit structure for an active directory lab environment.

        .DESCRIPTION
        Creates an Organizational Unit structure for an active directory lab environment.
	The structure is made for the 'int.acme.com' domain.

        .INPUTS
        None. You cannot pipe objects to Create-LabOU.

        .OUTPUTS
        None. Create-LabOU does not return any output.

        .EXAMPLE
        Create-LabOU
    #>

New-ADOrganizationalUnit -Name 'Acme' -ProtectedFromAccidentalDeletion $False -Path 'DC=int,DC=acme,DC=com'
New-ADOrganizationalUnit -Name 'Computers' -ProtectedFromAccidentalDeletion $False -Path 'OU=Acme,DC=int,DC=acme,DC=com'
New-ADOrganizationalUnit -Name 'Windows 10' -ProtectedFromAccidentalDeletion $False -Path 'OU=Computers,OU=Acme,DC=int,DC=acme,DC=com'
New-ADOrganizationalUnit -Name 'Servers' -ProtectedFromAccidentalDeletion $False -Path 'OU=Computers,OU=Acme,DC=int,DC=acme,DC=com'
New-ADOrganizationalUnit -Name 'Personnel' -ProtectedFromAccidentalDeletion $False -Path 'OU=Acme,DC=int,DC=acme,DC=com'
New-ADOrganizationalUnit -Name 'Administration' -ProtectedFromAccidentalDeletion $False -Path 'OU=Personnel,OU=Acme,DC=int,DC=acme,DC=com'
New-ADOrganizationalUnit -Name 'Physicians' -ProtectedFromAccidentalDeletion $False -Path 'OU=Personnel,OU=Acme,DC=int,DC=acme,DC=com'
New-ADOrganizationalUnit -Name 'Nurses' -ProtectedFromAccidentalDeletion $False -Path 'OU=Personnel,OU=Acme,DC=int,DC=acme,DC=com'
New-ADOrganizationalUnit -Name 'IT' -ProtectedFromAccidentalDeletion $False -Path 'OU=Acme,DC=int,DC=acme,DC=com'
