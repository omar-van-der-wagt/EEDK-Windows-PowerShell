# EEDK Windows Powershell script or command
Send this package to a Windows machine to run a command(line) or script as local admin.
Command line: max characters 254 can be given in ePO.
<!-- blank line -->
When the command starts with smb path and ends in .ps1 is will then run it as a local script. "\\server\scripts\myScript.ps1"
This script can be hosted on the evidence share for example. You can also create a new share where domain computers have access to.

## build.cmd 
Run this to build the package for ePO.
<!-- blank line -->

## EEDK_PowerShell_template
Based on the work from Steen Pedersen https://github.com/SteenPedersen/EEDK_PowerShell_template
<!-- blank line -->
----
<!-- blank line -->
Example of a PowerShell template script which can be deployed and provide feedback to ePO using Custom Props.

Make sure to place both the .CMD and .PS1 in an empty folder and use the EEDK to select that folder.
This will create an ePO package with both script files included.
