$AdminSiteURL = "https://M365xXXXXX-admin.sharepoint.com/"
$AdminName = "Admin@M365xXXXXX.onmicrosoftcom"
$BenutzerName = "user@M365xXXXXX.onmicrosoft.com"
  
#Connect-SPOService -url $AdminSiteURL 
 
$Sites = Get-SPOSite -Limit ALL
 
Foreach ($Site in $Sites)
{
    Write-host "Füge Benutzer zu Sammlungsadmins hinzu:"$Site.URL
    Set-SPOUser -site $Site -LoginName $BenutzerName -IsSiteCollectionAdmin $True
}