<#
        .SYNOPSIS
        Creates 7 Unique users for an Active Directory lab environment.

        .DESCRIPTION
        Creates 7 Unique users for an Active Directory lab environment.
	Each user is apart of the 'int.acme.com' domain.

        .INPUTS
        None. You cannot pipe objects to New-LabUsers

        .OUTPUTS
        Returns information about each newly created user.

        .EXAMPLE
        New-LabUsers
    #>

New-ADUser -name "SJenkins" -DisplayName "SJenkins" -GivenName "Sally" -surname "Jenkins" -samAccountName "SJenkins" -AccountPassword (ConvertTo-SecureString "Password1" -AsPlainText -Force) -UserPrincipalName ('SJenkins' + '@int.ACME.com') -Enabled $True
New-ADUser -name "LLewis" -DisplayName "LLewis" -GivenName "Linda" -surname "Lewis" -samAccountName "LLewis" -AccountPassword (ConvertTo-SecureString "Password1" -AsPlainText -Force) -UserPrincipalName ('LLewis' + '@int.ACME.com') -Enabled $True
New-ADUser -name "LSpock" -DisplayName "LSpock" -GivenName "Lenore" -surname "Spock" -samAccountName "LSpock" -AccountPassword (ConvertTo-SecureString "Password1" -AsPlainText -Force) -UserPrincipalName ('LSpock' + '@int.ACME.com') -Enabled $True
New-ADUser -name "RWho" -DisplayName "RWho" -GivenName "Rebecca" -surname "Who" -samAccountName "RWho" -AccountPassword (ConvertTo-SecureString "Password1" -AsPlainText -Force) -UserPrincipalName ('RWho' + '@int.ACME.com') -Enabled $True
New-ADUser -name "CRatchett" -DisplayName "CRatchett" -GivenName "Cindy" -surname "Ratchett" -samAccountName "CRatchett" -AccountPassword (ConvertTo-SecureString "Password1" -AsPlainText -Force) -UserPrincipalName ('CRatchett' + '@int.ACME.com') -Enabled $True
New-ADUser -name "ACarter" -DisplayName "ACarter" -GivenName "Andrea" -surname "Carter" -samAccountName "ACarter" -AccountPassword (ConvertTo-SecureString "Password1" -AsPlainText -Force) -UserPrincipalName ('ACarter' + '@int.ACME.com') -Enabled $True
New-ADUser -name "PHolmes" -DisplayName "PHolmes" -GivenName "Patricia" -surname "Holmes" -samAccountName "PHolmes" -AccountPassword (ConvertTo-SecureString "Password1" -AsPlainText -Force) -UserPrincipalName ('PHolmes' + '@int.ACME.com') -Enabled $True