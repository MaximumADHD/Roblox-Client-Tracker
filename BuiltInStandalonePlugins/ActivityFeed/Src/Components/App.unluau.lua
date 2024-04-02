-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Clients.ActivityHistoryClient)
local var3 = require(var0.Src.Clients.MockActivityHistoryClient)
local var4 = require(var0.Src.Contexts.ActivityHistoryProvider)
local var5 = require(var0.Src.Components.ActivityHistoryMain)
local var6 = require(var0.Src.Components.EnableTeamCreate)
local var7 = require(var0.Src.Components.StylingExamples)
return function(arg1)
   if arg1.plugin:GetItem("placeid") == 0 then
      local var0 = false
   end
   local var0 = true
   local var1 = game:GetService("StudioPublishService")
   local var2 = {}
   var2.activityHistoryClient = var2
   function var2.showSaveOrPublishPlaceToRobloxFn()
      var1:ShowSaveOrPublishPlaceToRoblox(false, false, Enum.StudioCloseMode.None)
   end
   
   var2.contextType = "real context"
   local var220 = {}
   local var3 = var0 and var1.createElement(var6, {})
   var220.EnableTeamCreate = var3
   var3 = var0
   if var3 then
      local var231 = {}
      var231.plugin = arg1.plugin
      local var0 = var1.createElement(var5, var231)
   end
   var220.ActivityHistoryMain = var3
   return var1.createElement(var4, var2, var220)
end
