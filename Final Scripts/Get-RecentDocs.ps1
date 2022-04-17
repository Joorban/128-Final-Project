<#
        .SYNOPSIS
        Gets the last 10 newly created documents.

        .DESCRIPTION
        Gets the last 10 newly created documents.

        .INPUTS
        None. You cannot pipe objects to Get-RecentDocs

        .OUTPUTS
        Returns the 10 most recent documents created, as well as when they where last edited.

        .EXAMPLE
        Get-RecentDocs
    #>

Get-ChildItem -Path .\Documents -Recurse | Sort-Object LastWriteTime -Descending | Select-Object Name,LastWriteTime -First 10