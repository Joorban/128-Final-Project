<#
	.SYNOPSIS
	Writes the welcome message for a profile.

	.DESCRIPTION
	Writes the welcome message for a profile.
	This will display a smiley face ascii, as well as the current Powershell Version.

	.INPUTS
	None. You cannot pipe objects to Get-WelcomeMSG

	.EXAMPLE
	Get-WelcomeMSG

#>

get-content C:\Users\jorda\Documents\WindowsPowerShell\SMILEY.txt | write-host -foregroundcolor Green
Write-Host 'Powershell' $PsVersionTable.PSVersion '-' (Get-date)
Write-Host 'Hello there'
Write-Host ''