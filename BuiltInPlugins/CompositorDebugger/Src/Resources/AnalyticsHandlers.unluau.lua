-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StudioService")
local var1 = script:FindFirstAncestor("CompositorDebugger")
local var2 = require(var1.Packages.Framework).Dash
local var3 = require(var1.Src.Types)
local var4 = require(var1.Src.Util.debugFlags)
local var5 = require(var1.LuaFlags.GetFFlagAnalyticsReports)
return function(arg1)
   local function var0(arg1, arg2)
      local var29 = var2
      var29 = arg2
      local var33 = {}
      var33.studioSid = arg1:GetSessionId()
      var33.clientId = arg1:GetClientId()
      local var1 = game
      var33.placeId = var1.PlaceId
      var33.userId = var0:GetUserId()
      arg2 = var29.join(var29 or {}, var33)
      if var4.ShowAnalytics then
         print("**", arg1, "**")
         if arg2 then
            local var0 = arg2
            local var1 = nil
            local var2 = nil
            print("* ", var57, var1)
         else
            print("* no arguments")
         end
         print("**")
      end
      if var5() then
         var1 = arg1
         arg1:SendEventDeferred("studio", "compositor", var1, arg2)
      end
   end
   
   local var1 = {}
   function var1.onCompositorOpened(arg1)
      var0(arg1)
   end
   
   function var1.onCompositorClosed(arg1, arg2)
      local var78 = {}
      var78.timeSinceOpened = arg2
      var0(arg1, var78)
   end
   
   return var1
end
