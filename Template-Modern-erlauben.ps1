Import-Module microsoft.online.sharepoint.powershell
#Erlauben, ein Template von einer Modern-Site zu erstellen
param(
[parameter(Mandatory=$true)]
[string]$MandantenName,
[parameter(Mandatory=$true)]
[string]$SiteUrl)

Connect-SPOService -Url "https://$MandantenName-admin.sharepoint.com"
Set-SPOSite $siteUrl -DenyAddAndCustomizePages 0