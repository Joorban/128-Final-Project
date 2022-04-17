<#
        .SYNOPSIS
        Finds the total number of software and returns a table

        .DESCRIPTION
        Finds the total number of software and returns a table
	Returns the total number as well.

        .INPUTS
        None. You cannot pipe objects to Get-Software

        .OUTPUTS
        Get-Software returns a table of software as well as a total number.

        .EXAMPLE
        Get-Software

    #>

$software = Get-WmiObject -Class Win32_Product | Select Name,Version
$software
$I = 0
foreach ($result in $software) {
    $I++
}
Write-Host "The total amount is $I"
