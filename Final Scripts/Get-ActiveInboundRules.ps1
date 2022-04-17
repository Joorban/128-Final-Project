<#
        .SYNOPSIS
        Gets a list of all active inbound firewall rules.

        .DESCRIPTION
        Gets a list of all active inbound firewall rules.
	
        .INPUTS
        None. You cannot pipe objects to Get-ActiveInboundRules

        .OUTPUTS
        Returns all currently active inbound firewall rules on the current system.

        .EXAMPLE
        Get-ActiveInboundRules
    #>

get-netfirewallrule -policystore activestore -direction inbound