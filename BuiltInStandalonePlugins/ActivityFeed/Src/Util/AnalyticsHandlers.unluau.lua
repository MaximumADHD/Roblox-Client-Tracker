-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Cryo)
local var1 = game:GetService("StudioService")
return function(arg1)
   local function var0(arg1)
      arg1 = arg1 or {}
      local var32 = {}
      var32.studioSid = arg1:GetSessionId()
      local var38 = arg1:GetClientId()
      var32.clientId = var38
      var38 = arg1
      arg1:SendEventDeferred("studio", "ActivityHistory", "ActivityHistoryAction", var0.Dictionary.join(var32, var38))
   end
   
   local var1 = {}
   function var1.bubblesSeenOnSessionEnd(arg1, arg2, arg3, arg4)
      local var52 = {}
      var52.analyticsEventType = "bubblesSeenOnSessionEnd"
      var52.bubblesSeenOnSessionEndCount = arg2
      var52.placeId = arg3
      var52.universeId = arg4
      var0(var52)
   end
   
   function var1.deeplink(arg1, arg2, arg3)
      local var58 = {}
      var58.analyticsEventType = "deeplink"
      var58.eventtype = arg2
      var58.deeplinktype = arg3
      var0(var58)
   end
   
   return var1
end
