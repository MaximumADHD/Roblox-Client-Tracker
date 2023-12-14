-- Generated with Unluau (https://github.com/valencefun/unluau)
local var49 = script
local var50 = var49.Parent
local var51 = var50.LocalizationPage
local var2 = { var50.LocalizationPage }
var51 = require(script.Parent.BasicInfoPage.BasicInfo)
var50 = require(script.Parent.PermissionsPage.Permissions)
var49 = require(script.Parent.MonetizationPage.Monetization)
local var55 = require(script.Parent.SecurityPage.Security)
local var56 = require(script.Parent.PlacesPage.Places)
local var57 = require(var51.Localization)
local var6 = require(script.Parent.AvatarPage.Avatar)
local var7 = require(script.Parent.WorldPage.World)
local var8 = require(script.Parent.OptionsPage.Options)
if not game:GetFastFlag("AvatarChatSettingsEnabled2") then
   if game:GetFastFlag("MoveSpatialVoice") then
      var2 + 1 = require(script.Parent.CommunicationPage.Communication)
   end
end
var2 + 1 = require(script.Parent.CommunicationPage.Communication)
return var2
