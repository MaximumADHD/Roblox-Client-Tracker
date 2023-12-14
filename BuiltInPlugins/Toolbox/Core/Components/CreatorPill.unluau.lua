-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = require(var0.Core.Components.CreatorLabel)
local var4 = require(var0.Core.Util.Images)
local var5 = require(var0.Core.Util.LayoutOrderIterator)
local var6 = var2.ContextServices.Stylizer
local var7 = var2.UI.Pane
return function(arg1)
   local var0 = var6:use()
   local var1 = UDim.new(0, var0.creatorPill.spacingUnit / 2)
   local var2 = var5.new()
   local var47 = {}
   var47.AutomaticSize = Enum.AutomaticSize.XY
   var47.BackgroundColor3 = var0.searchPill.backgroundColor
   var47.Layout = Enum.FillDirection.Horizontal
   var47.LayoutOrder = arg1.LayoutOrder
   var47.OnClick = arg1.OnActivated
   var47.Padding = var1.Offset
   var47.Spacing = var1.Offset
   var47.VerticalAlignment = Enum.VerticalAlignment.Center
   local var57 = {}
   local var61 = {}
   var61.CornerRadius = var1
   var57.Corner = var1.createElement("UICorner", var61)
   local var66 = {}
   var66.CreatorId = arg1.CreatorId
   var66.CreatorName = arg1.CreatorName
   var66.CreatorType = arg1.CreatorType
   var66.LayoutOrder = var2:getNextOrder()
   var57.CreatorLabel = var1.createElement(var3, var66)
   local var76 = {}
   var76.BackgroundTransparency = 1
   var76.Image = var4.CLOSE_BUTTON
   var76.LayoutOrder = var2:getNextOrder()
   var76.Size = UDim2.fromOffset(16, 16)
   var57.Close = var1.createElement("ImageLabel", var76)
   return var1.createElement(var7, var47, var57)
end
