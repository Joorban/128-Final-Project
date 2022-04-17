<#
        .SYNOPSIS
        Creates a new VM and VHD for Lab use

        .DESCRIPTION
	Creates a new VM and VHD of the same name.
	The VHD uses a parent disk of either Windows 10 or Server 2019.
	Used for quickly creating a usable Virtual Machine that will support Lab requirements.

        .PARAMETER VMName
        Specifies the name for the Virtual Hard Disk as well as the Virtual Machine.
	This Paremeter is mandatory.

        .PARAMETER OS
        Specifies the parent disk the VM will use.
	Entering 1 will use Server 2019.
	Entering 2 will use Windows 10. 
	This Paremeter is mandatory.

        .INPUTS
        None. You cannot pipe objects to New-LabVM

        .OUTPUTS
        Returns the information of the newly created Virtual Machine and VHD.

        .EXAMPLE
	New-LabVM -VMName "VirtualMachine" -OS "1"

        .EXAMPLE
	New-LabVM -VMName "Test" -OS "2"
    #>

        param (
            [Parameter(Mandatory = $True)][string]$VMName,
            [Parameter(Mandatory = $True)][string]$OS
        )

    if ($OS -eq '1') {
        New-VHD -ParentPath 'D:\COLLEGE\ICT-127\Parent Disk\Server 2019 parent Disk.vhdx' `
        -Path D:\COLLEGE\ICT-127\VHD\$VMNAME.vhdx `
        -Differencing
    } elseif ($OS -eq '2') {
        New-VHD -ParentPath 'D:\COLLEGE\ICT-127\Parent Disk\Windows 10 Parent.vhdx' `
        -Path D:\COLLEGE\ICT-127\VHD\$VMNAME.vhdx `
        -Differencing
    }
    
    New-VM -Name $VMNAME `
    -path D:\COLLEGE\ICT-127\VMS `
    -MemoryStartupBytes 4GB `
    -SwitchName "Private Switch" `
    -Generation 2 `
    -VHDPath D:\COLLEGE\ICT-127\VHD\$VMNAME.vhdx