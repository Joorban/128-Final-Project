<#
        .SYNOPSIS
        Starts a timer based on the amount of time defined by the user.

        .DESCRIPTION
        Starts a timer based on the amount of time defined by the user.
	The time is in seconds.
	Displays a percentage bar to show remaining time.

        .PARAMETER Count
        Specifies the length of the timer in seconds.

        .INPUTS
        None. You cannot pipe objects to Start-Timer

        .OUTPUTS
        Returns a message when the timer is completed.

        .EXAMPLE
        Start-Timer -count 60
    #>

param ( 
	[parameter(Mandatory = $true)] [int]$count 
)
[int]$original = $count
while ($count -gt 0) {
$percentage = ($count / $original) * 100
write-progress "$count seconds remaining..." -percentcomplete $percentage
$count = $count - 1
start-sleep (1)
}
write-host "timer COMPLETE"