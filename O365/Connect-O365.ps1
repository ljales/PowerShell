# Script used to connect to Office 365

# Creates pop up asking to input users login details
$UserCredential = Get-Credential

# Creates a new session
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection

# Imports the created session
Import-PSSession $Session

# Connects to the Msol services
Connect-MsolService -Credential $UserCredential
