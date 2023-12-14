-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("GameSettingsExperienceGuidelines")
local var1 = game:GetService("StudioService")
local var2 = game:GetService("GuiService")
local var3 = script.Parent.Parent.Parent
local var4 = require(var3.Src.Networking.Http)
local var5 = require(var3.Src.Util.Analytics)
local var6 = {}
function var6.BuildWatchUrl(arg1)
   return "https://" ... "www.youtube.com" ... string.format("/watch?v=%s", arg1)
end

function var6.BuildPlaceSettingsUrl(arg1)
   return var4.BuildRobloxUrl("www", "places/%d/update#", arg1)
end

function var6.OpenVideo(arg1)
   local var177 = var6
   var177 = arg1
   var2:OpenBrowserWindow(var177.BuildWatchUrl(var177))
end

function var6.OpenPlaceSettings(arg1)
   local var184 = var6
   var184 = arg1
   var2:OpenBrowserWindow(var184.BuildPlaceSettingsUrl(var184))
end

function var6.OpenLocalizationSettings(arg1)
   return function(arg1)
      return "https://" ... "www.youtube.com" ... string.format("/watch?v=%s", arg1)
   end
end

function getAdditionalArgs()
   local var0 = {}
   var0.userId = var1:GetUserId()
   var0.machineTimeStamp = os.time()
   return var0
end

function var6.OpenExperienceGuidelines()
   assert(var0)
   return function()
      var5.sendEventDeferred("click_learn_more", getAdditionalArgs())
      var2:OpenBrowserWindow(var4.BuildRobloxUrl("create", "docs/production/promotion/experience-guidelines"))
   end
end

function var6.OpenExperienceQuestionnaire(arg1)
   assert(var0)
   return function(arg1)
      return "https://" ... "www.youtube.com" ... string.format("/watch?v=%s", arg1)
   end
end

return var6
