<#
        .SYNOPSIS
        Lets the user edit the IP information of a chosen interface on their system.

        .DESCRIPTION
        Lets the user edit the IP information of a chosen interface on their system.
	Lets the user decide if they want to change Ipv4 or Ipv6 information. 

        .PARAMETER InterFaceAlias
        Specifies which Interface to edit. 
	Asked by Default.

        .PARAMETER AddressFamily
        Specifies if the address will be ipv4 or ipv6.
	Asked by Default.

	.PARAMETER IPAddress
        Specifies the Ip address the interface will use.
	Asked by Default.

	.PARAMETER PrefixLength
        Specifies the prefix lenght of the ip address.
	Asked by Default.	

	.PARAMETER DefaultGateway
        Specifies the default-gateway of the interface.
	Can be left blank if for none.
	Asked by Default.

        .INPUTS
        None. You cannot pipe objects to Set-IP

        .OUTPUTS
        Returns information about the updated interface.

        .EXAMPLE
        Set-IP -interfacealias 'Ethernet' -Addressfamily Ipv4 -IPAddress 192.168.0.1 -PrefixLength 24 -DefaultGateway 192.168.0.254

        .EXAMPLE
        Set-IP -interfacealias 'Ethernet' -Addressfamily Ipv4 -IPAddress 192.168.0.1 -PrefixLength 24

    #>

        param (
            $InterfaceAlias = (Read-Host Enter the Interface you want to address),
            $AddressFamily = (Read-Host Ipv4 or Ipv6),
            $IPAddress = (Read-host Enter the Ip Address for this interface),
            $PrefixLength = (Read-host What is the prefix length for the address),
            $DefaultGateway = (Read-Host Enter a Default Gateway, or leave blank for none)
        )
        if ($DefaultGateway -eq "") {
            New-NetIPAddress -InterfaceAlias $InterfaceAlias -IPAddress $IPAddress -AddressFamily $AddressFamily -PrefixLength $PrefixLength
        }
        else {
            New-NetIPAddress -InterfaceAlias $InterfaceAlias -IPAddress $IPAddress -AddressFamily $AddressFamily -PrefixLength $PrefixLength -DefaultGateway $DefaultGateway
        }