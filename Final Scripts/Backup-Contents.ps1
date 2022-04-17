<#
        .SYNOPSIS
        Creates a backup of all contents in the 'backmeup' folder.

        .DESCRIPTION
        Creates a backup of all contents in the 'backmeup' folder.
	The backup is named after the current date is was backed up at.

        .INPUTS
        None. You cannot pipe objects to Backup-Contents

        .OUTPUTS
        None. Backup-Contents does not return any output.

        .EXAMPLE
       	Backup-Contents
    #>

$folderName = (Get-Date).tostring("Backup-yyyy-MM-dd")  
new-item -Path C:\Users\jorda\Desktop -ItemType "directory" -name "$foldername" 
Copy-Item -Path C:\Users\jorda\Desktop\backmeup\* -destination C:\Users\jorda\Desktop\$foldername 

