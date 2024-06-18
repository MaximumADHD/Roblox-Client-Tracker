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
   local var19 = {}
   local var23 = {}
   var1.Tag = var6("CX-Invisible", "X-Fit")
   var23.LayoutOrder = var5:getNextOrder()
   var23.Text = var1:getText("EnableTeamCreate", "SaveText")
   var19.Text = var1.createElement("TextLabel", var23)
   local var41 = {}
   var1.Tag = var6("X-Corner", "X-Fit")
   var41.LayoutOrder = var5:getNextOrder()
   function var1.Event.Activated()
      var0.showSaveOrPublishPlaceToRobloxFn()
   end
   
   var41.Text = var1:getText("EnableTeamCreate", "SaveToRobloxButtonText")
   var19.Button = var1.createElement("TextButton", var41)
   return var1.createElement("Frame", {}, var19)
end
