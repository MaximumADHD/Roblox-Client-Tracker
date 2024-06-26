-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("VisualizationModes")
local var1 = game:GetService("StudioService")
local var2 = require(var0.Packages.Dash)
local var3 = require(var0.Src.Types)
return function(arg1)
   local function var0(arg1, arg2)
      local var21 = {}
      var21.studioSid = arg1:GetSessionId()
      var21.clientId = arg1:GetClientId()
      var21.placeId = game.PlaceId
      local var32 = var1:GetUserId()
      var21.userId = var32
      var32 = arg2
      arg1:SendEventDeferred("studio", "VisualizationModes", arg1, var2.join(var21, var32))
   end
   
   local var1 = {}
   function var1.openPlugin()
      var0("PluginOpen")
   end
   
   function var1.visualizationModeToggled(arg1, arg2)
      local var47 = {}
      var47.actionSource = arg2.actionSource
      var47.visualizationMode = arg2.visualizationMode
      var47.visualizationModeCategory = arg2.visualizationModeCategory
      var47.visualizationModeEnabled = arg2.isEnabled
      var0("VisualizationModeToggled", var47)
   end
   
   function var1.visualizationModeEnabledDuration(arg1, arg2)
      local var56 = {}
      var56.visualizationMode = arg2.visualizationMode
      var56.visualizationModeCategory = arg2.visualizationModeCategory
      var56.durationSeconds = arg2.durationSeconds
      var0("VisualizationModeEnabledDuration", var56)
   end
   
   return var1
end
