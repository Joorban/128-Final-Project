<#
        .SYNOPSIS
        Changes the powershell text and background colors.

        .DESCRIPTION
        Changes the powershell text and background colors.
        This script is to be used in a profile script.

        .INPUTS
        None. You cannot pipe objects to Change-PSColor.

        .OUTPUTS
        None. Change-PSColor does not generate any output.

        .EXAMPLE
        Change-PSColor

    #>

    $Host.UI.RawUI.BackgroundColor = ($bckgrnd = 'Black')
    $Host.UI.RawUI.ForegroundColor = 'Green'
    $Host.PrivateData.ErrorForegroundColor = 'Red'
    $Host.PrivateData.ErrorBackgroundColor = $bckgrnd
    $Host.PrivateData.WarningForegroundColor = 'Magenta'
    $Host.PrivateData.WarningBackgroundColor = $bckgrnd
    $Host.PrivateData.DebugForegroundColor = 'Yellow'
    $Host.PrivateData.DebugBackgroundColor = $bckgrnd
    $Host.PrivateData.VerboseForegroundColor = 'Green'
    $Host.PrivateData.VerboseBackgroundColor = $bckgrnd
    $Host.PrivateData.ProgressForegroundColor = 'Cyan'
    $Host.PrivateData.ProgressBackgroundColor = $bckgrnd