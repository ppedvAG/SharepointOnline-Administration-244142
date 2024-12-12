$site_script = '   
 {
     "$schema": "schema.json",
         "actions": [
             {
                 "verb": "createSPList",
                 "listName": "PizzaListe",
                 "templateType": 101,
                 "subactions": [
                     {
                         "verb": "setDescription",
                         "description": "Pizza"
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "Text",
                         "displayName": "Pizzasorte",
                         "isRequired": false,
                         "addToDefaultView": true
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "Number",
                         "displayName": "Anzahl",
                         "addToDefaultView": true,
                         "isRequired": true
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "User",
                         "displayName": "Pizzabäcker",
                         "addToDefaultView": true,
                         "isRequired": true
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "Note",
                         "displayName": "Meeting Notes",
                         "isRequired": false
                     },
                     {
                         "verb": "addSPField",
                         "fieldType": "text",
                         "displayName": "Abteilung",
                         "isRequired": false
                     }
                 ]
             }
         ],
             "bindata": { },
     "version": 1
 }
 '

 ##
 Add-SPOSiteScript -Title "Alexander-Skript2" -Content $site_script -Description "Alexander-Skript-Pizza"

 ## Hinzufügen des neuen Designs -> ID aus Shell eintragen(Zeile56)
 Add-SPOSiteDesign -Title "Alexander-PizzaDesign" -WebTemplate "64" -SiteScripts "5a9c0d87-114d-4297-9a17-0f7eca15e5c8" -Description "AlexanderPizza-Skript"

 ## neue Teamsite erstellen und via Zahnrad "Design anwenden"... Info: Zeile59 Wert "64" ist Teamsite modern; Wert "68" ist Kommunikationsite für alle anderen Wert "1 eintragen"

 #siehe auch  https://docs.microsoft.com/de-de/sharepoint/dev/declarative-customization/get-started-create-site-design#use-the-new-site-design 

 Set-SPOSiteDesign -Identity "2f69305d-348f-41e6-8eb8-e3e08d02f78b" -IsDefault:$true