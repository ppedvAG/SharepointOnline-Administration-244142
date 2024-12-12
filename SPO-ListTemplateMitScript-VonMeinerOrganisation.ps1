Connect-SPOService -Url https://m365xXXXXXX-admin.sharepoint.com

$extracted = Get-SPOSiteScriptFromList -ListUrl "https://m365xXXXXXX.sharepoint.com/sites/SammlungsName/Lists/ListenName"

#Skript hinzufügen
Add-SPOSiteScript -Title "MeinListScript" -Description "Erstellt Liste von meinem Template" -Content $extracted


#Listendign erstellen mit ID von Rückgabe oben
Add-SPOListDesign -Title "<Name>" -Description "<Beschreibung>" -SiteScripts "592900f3-cae6-4726-b2de-b5c16370ad3e" -ListColor Orange -ListIcon BullseyeTarget -Thumbnail "https://contoso.sharepoint.com/SiteAssets/site-thumbnail.png"

#Template berechtigen
Grant-SPOSiteDesignRights 
  -Identity <List design ID to apply rights to> 
  -Principals "user@......" 
  -Rights View


  #Template abfragen
  Get-SPOListDesign <List design ID>

  #Template löschen
  Remove-SPOListDesign <List design ID>

  #Skript entfernen
  Remove-SPOSiteScript <Site script ID>