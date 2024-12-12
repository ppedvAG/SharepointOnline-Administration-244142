Import-Module Microsoft.Online.SharePoint.Powershell -DisableNameChecking
 
#Parameters
$AdminCenterURL="https://m365xXXXXX-admin.sharepoint.com"
 
#Setup Credentials to connect
Connect-SPOService -Url $AdminCenterURL -Credential (Get-Credential)
 
Set-SPOTenant -EnableMinimumVersionRequirement $False

