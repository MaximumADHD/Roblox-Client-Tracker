-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Clients.ActivityHistoryClient)
local var3 = require(var0.Src.Clients.MockActivityHistoryClient)
local var4 = require(var0.Src.Contexts.ActivityHistoryProvider)
local var5 = require(var0.Src.Components.ActivityHistoryMain)
local var6 = require(var0.Src.Components.EnableTeamCreate)
local var7 = require(var0.Src.Components.StylingExamples)
local var8 = require(var0.Src.Hooks.useCollaborators)
local var9 = require(var0.Src.Hooks.usePlaceAndUniverseId)
return function(arg1)
   if arg1.plugin:GetItem("placeid") == 0 then
      local var0 = false
   end
   local var0 = true
   local var1 = game:GetService("StudioPublishService")
   var9(arg1.plugin)
   local var2 = game:GetService("GuiService")
   local var3 = {}
   var3.activityHistoryClient = var2
   function var3.showSaveOrPublishPlaceToRobloxFn()
      var1:ShowSaveOrPublishPlaceToRoblox(false, false, Enum.StudioCloseMode.None)
   end
   
   var3.useCollaborators = var8
   var3.usePlaceAndUniverseId = var9
   function var3.openBrowserLink(arg1)
      var2:OpenBrowserWindow(arg1)
   end
   
   var3.contextType = "real context"
   local var180 = {}
   local var4 = var0 and var1.createElement(var6, {})
   var180.EnableTeamCreate = var4
   var4 = var0
   if var4 then
      local var191 = {}
      var191.plugin = arg1.plugin
      local var0 = var1.createElement(var5, var191)
   end
   var180.ActivityHistoryMain = var4
   return var1.createElement(var4, var3, var180)
end
