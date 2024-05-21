-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("ModerationDialog")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices.Localization
local var4 = var2.Util.LayoutOrderIterator
return function(arg1)
   local var0 = var3:use()
   local var1 = var4.new()
   local var26 = {}
   var26.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "Component-Reason X-FitY"
   local var31 = {}
   local var35 = {}
   local var38 = {}
   var38.reason = arg1.Reason
   var35.Text = var0:getText("Reason", "Reason1", var38)
   var35.LayoutOrder = var1:getNextOrder()
   var1.Tag = "X-FitY"
   var31.Reason = var1.createElement("TextLabel", var35)
   local var51 = {}
   local var54 = {}
   var54.offensiveItem = arg1.OffensiveItem
   var51.Text = var0:getText("Reason", "OffensiveItem1", var54)
   var51.LayoutOrder = var1:getNextOrder()
   var1.Tag = "X-FitY"
   var31.OffensiveItem = var1.createElement("TextLabel", var51)
   return var1.createElement("Frame", var26, var31)
end
