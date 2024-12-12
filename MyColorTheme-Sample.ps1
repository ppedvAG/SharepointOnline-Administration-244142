#Define the color palette
$ThemePalette = @{
  "themePrimary"= "#25d402";
  "themeLighterAlt"= "#010800";
  "themeLighter"= "#062200";
  "themeLight"= "#0b3f01";
  "themeTertiary"= "#167f01";
  "themeSecondary"= "#21ba02";
  "themeDarkAlt"= "#38d818";
  "themeDark"= "#53de37";
  "themeDarker"= "#7ce767";
  "neutralLighterAlt"= "#042037";
  "neutralLighter"= "#07263f";
  "neutralLight"= "#0d304c";
  "neutralQuaternaryAlt"= "#123654";
  "neutralQuaternary"= "#163c5b";
  "neutralTertiaryAlt"= "#2c5577";
  "neutralTertiary"= "#004d4d";
  "neutralSecondary"= "#009999";
  "neutralSecondaryAlt"= "#009999";
  "neutralPrimaryAlt"= "#00e0e0";
  "neutralPrimary"= "#00ffff";
  "neutralDark"= "#3dffff";
  "black"= "#70ffff";
  "white"= "#011a2e";
}
 
#Set Admin Center URL
$AdminCenterURL = "https://m365x75674389-admin.sharepoint.com"
 
#Connect to SharePoint Online - Prompt for credentials
Connect-SPOService -url $AdminCenterURL -Credential (Get-Credential)
 
#Add new SharePoint Online theme
Add-SPOTheme -Name "MeinColorTest" -Palette $ThemePalette -IsInverted $False

#Read more: https://www.sharepointdiary.com/2017/11/sharepoint-online-add-custom-theme-using-powershell.html#ixzz7upq6geOO

#https://fluentuipr.z22.web.core.windows.net/heads/master/theming-designer/index.html
