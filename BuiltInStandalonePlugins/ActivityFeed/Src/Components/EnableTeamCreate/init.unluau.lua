-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Src.Contexts.ActivityHistoryContext)
local var4 = var2.ContextServices.Localization
local var5 = var2.Util.LayoutOrderIterator.new()
local var6 = var2.Styling.joinTags
return function(arg1)
   local var0 = var1.useContext(var3)
   local var1 = var4:use()
   var1.Tag = var6("X-Column", "X-Middle", "X-Center", "Component-EnableTeamCreate")
   local var45 = {}
   local var49 = {}
   var1.Tag = var6("CX-Invisible", "X-Fit")
   var49.LayoutOrder = var5:getNextOrder()
   var49.Text = var1:getText("EnableTeamCreate", "SaveText")
   var45.Text = var1.createElement("TextLabel", var49)
   local var67 = {}
   var1.Tag = var6("X-Corner", "X-Fit")
   var67.LayoutOrder = var5:getNextOrder()
   function var1.Event.Activated()
      var0.showSaveOrPublishPlaceToRobloxFn()
   end
   
   var67.Text = var1:getText("EnableTeamCreate", "SaveToRobloxButtonText")
   var45.Button = var1.createElement("TextButton", var67)
   return var1.createElement("Frame", {}, var45)
end
