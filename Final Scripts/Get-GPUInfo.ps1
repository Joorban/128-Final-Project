<#
        .SYNOPSIS
        Gets information about the graphics card currently in use.

        .DESCRIPTION
        Gets information about the graphics card currently in use.

        .INPUTS
        None. You cannot pipe objects to Get-GPUInfo

        .OUTPUTS
        Returns the Graphics card name, its max refrehs rate, and current version.

        .EXAMPLE
        Get-GPUInfo
    #>

Get-WmiObject win32_VideoController | Format-List -Property Name,MaxRefreshRate,DriverVersion