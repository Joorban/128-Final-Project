<#
        .SYNOPSIS
        Gets all disabled windows features.

        .DESCRIPTION
        Gets all disabled windows features.
	Returns the features in a list.

        .INPUTS
        None. You cannot pipe objects to Disabled-Features

        .OUTPUTS
        None. Disabled-Features does return any output.

        .EXAMPLE
        Disabled-Features
    #>

Get-WindowsOptionalFeature -Online | ? state -eq 'disabled' | select featurename | sort descending