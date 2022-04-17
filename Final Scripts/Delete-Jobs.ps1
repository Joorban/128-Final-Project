<#
        .SYNOPSIS
        Deletes all completed jobs.

        .DESCRIPTION
        Deletes all completed jobs.
	Tells the user the total number of jobs deleted.

        .INPUTS
        None. You cannot pipe objects to Delete-Jobs.

        .OUTPUTS
        Returns a list of deleted jobs and the total number of jobs deleted.

        .EXAMPLE
        Delete-Jobs
    #>

        $jobs = get-job -state completed
        $jobs | Remove-Job
        $i = 0
        foreach ($job in $Jobs) {
            $i++        
        }
        $jobs
        return "$i Completed Jobs have been deleted!"