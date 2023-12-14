-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.TextLabel
local var5 = var1.PureComponent:extend("UIKeyValueTextLabel")
function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var25 = {}
   var25.Size = UDim2.new(1, 0, 0, var1.HeightPx)
   var25.BackgroundTransparency = 1
   var25.LayoutOrder = var0.LayoutOrder
   local var34 = {}
   local var38 = {}
   var38.FillDirection = Enum.FillDirection.Horizontal
   var38.Padding = UDim.new(0, var1.PaddingPx)
   var38.SortOrder = Enum.SortOrder.LayoutOrder
   var38.VerticalAlignment = Enum.VerticalAlignment.Center
   var34.Layout = var1.createElement("UIListLayout", var38)
   local var50 = {}
   var50.Text = var0.Label ... ":"
   var50.Size = UDim2.new(0, var1.KeyWidthPx, 1, 0)
   var50.TextXAlignment = Enum.TextXAlignment.Right
   var50.TextYAlignment = Enum.TextYAlignment.Center
   var50.LayoutOrder = 1
   var34.KeyTextLabel = var1.createElement(var4, var50)
   local var67 = {}
   var67.Text = var0.Value
   var67.Size = UDim2.new(1, var1.KeyWidthPx, 1, 0)
   var67.TextXAlignment = Enum.TextXAlignment.Left
   var67.TextYAlignment = Enum.TextYAlignment.Center
   var67.LayoutOrder = 2
   var34.ValueTextLabel = var1.createElement(var4, var67)
   return var1.createElement("Frame", var25, var34)
end

local var82 = {}
var82.Stylizer = var3.Stylizer
var82.Localization = var3.Localization
var5 = var3.withContext(var82)(var5)
return var5
