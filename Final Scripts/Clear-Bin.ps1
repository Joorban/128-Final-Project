<#
        .SYNOPSIS
        Prompts the user to clear their recycle bin.

        .DESCRIPTION
        Prompts the user to clear their recycle bin.
	Opens a seperate Yes/No alert window before executing.

        .INPUTS
        None. You cannot pipe objects to Clear-Bin

        .OUTPUTS
        Returns a message alerting the user of file deletion if chosen to do so.

        .EXAMPLE
        Clear-Bin
    #>
add-Type -AssemblyName System.Windows.Forms
$result = [System.Windows.Forms.MessageBox]::Show('Are you sure you want to clear the recycle bin?', 'Warning', 'YesNo', 'Warning')
if ($result -eq 'Yes')
	{
		Write-host -ForegroundColor Cyan "Deleting Files"
		Get-ChildItem -Path 'C:\$Recycle.Bin' -Force | Remove-Item -Recurse -ErrorAction SilentlyContinue
	} else { 
		write-host "Ending Process" } 
 