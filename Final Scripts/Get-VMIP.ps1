<#
        .SYNOPSIS
        Gets IP information about a selected virtual machine.

        .DESCRIPTION
        Gets IP information about a selected virtual machine.

        .PARAMETER VMName
        Specifies the virtual machine to be remoted into.

        .INPUTS
        None. You cannot pipe objects to Get-VMIP

        .OUTPUTS
        Returns a list of IP information from the selected VM.

        .EXAMPLE
        Get-VMIP
    #>

    param (
        [parameter(Mandatory = $true)][string]$VMName
    )
    $ipinfo = Invoke-Command -VMname $VMName -Command { Get-NetIPConfiguration }
    return $ipinfo