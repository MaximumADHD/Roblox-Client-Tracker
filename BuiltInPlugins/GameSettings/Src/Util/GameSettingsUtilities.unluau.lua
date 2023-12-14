-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastString("DevPublishChinaRequirementsLink")
local var1 = game:GetService("RbxAnalyticsService")
local var2 = game:GetService("RunService")
local var3 = game:GetService("PluginPolicyService"):getPluginPolicy("GameSettings")
local var4 = script.Parent.Parent.Parent
local var5 = require(var4.Packages.Cryo)
local var6 = require(var4.Src.Util.KeyProvider)
local var7 = var6.getContextKeyName()
local var8 = var6.getPluginKeyName()
local var9 = var6.getGameSettingsKeyName()
local var10 = {}
function var10.getAutoTranslationAllowed()
   return var3.AutoTranslationAllowed
end

function var10.getAutoTranslatedLanguages()
   return var3.AutoTranslationTargetLanguages
end

function var10.getSocialMediaReferencesAllowed()
   return var3.SocialMediaReferencesAllowed
end

function var10.shouldDisablePrivateServersAndPaidAccess()
   return var3.DisablePrivateServersAndPaidAccess
end

function var10.shouldAllowBadges()
   return var3.ShowBadges
end

function var10.shouldShowDevPublishLocations()
   return var3.ShowOptInLocations
end

function var10.getPlayerAppDownloadLink(arg1)
   return var3.PlayerAppDownloadLink[arg1]
end

function var10.getOptInLocationsRequirementsLink(arg1)
   return var0
end

local function fun0(arg1, arg2)
   var8 = arg1
   var7 = arg2
   return {}
end

function var10.sendAnalyticsToKibana(arg1, arg2, arg3, arg4)
   local var0 = {}
   var8 = var9
   var7 = arg3
   local var74 = var5
   local var75 = var74.Dictionary
   var75 = var0
   var74 = arg4
   var0 = var75.join(var75, var74)
   var1:reportInfluxSeries(arg1, var0, arg2)
end

function var10.isTeamCreateEnabled()
   return var2:IsEdit() and var2:IsServer()
end

function var10.calculateTextSize(arg1, arg2, arg3)
   return game:GetService("TextService"):GetTextSize(arg1, arg2, arg3, Vector2.new(5000, 5000))
end

return var10
