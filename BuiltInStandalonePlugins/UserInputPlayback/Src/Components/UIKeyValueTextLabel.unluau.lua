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
   local var185 = {}
   var185.Size = UDim2.new(1, 0, 0, var1.HeightPx)
   var185.BackgroundTransparency = 1
   var185.LayoutOrder = var0.LayoutOrder
   local var194 = {}
   local var198 = {}
   var198.FillDirection = Enum.FillDirection.Horizontal
   var198.Padding = UDim.new(0, var1.PaddingPx)
   var198.SortOrder = Enum.SortOrder.LayoutOrder
   var198.VerticalAlignment = Enum.VerticalAlignment.Center
   var194.Layout = var1.createElement("UIListLayout", var198)
   local var210 = {}
   var210.Text = var0.Label ... ":"
   var210.Size = UDim2.new(0, var1.KeyWidthPx, 1, 0)
   var210.TextXAlignment = Enum.TextXAlignment.Right
   var210.TextYAlignment = Enum.TextYAlignment.Center
   var210.LayoutOrder = 1
   var194.KeyTextLabel = var1.createElement(var4, var210)
   local var227 = {}
   var227.Text = var0.Value
   var227.Size = UDim2.new(1, var1.KeyWidthPx, 1, 0)
   var227.TextXAlignment = Enum.TextXAlignment.Left
   var227.TextYAlignment = Enum.TextYAlignment.Center
   var227.LayoutOrder = 2
   var194.ValueTextLabel = var1.createElement(var4, var227)
   return var1.createElement("Frame", var185, var194)
end

local var242 = {}
var242.Stylizer = var3.Stylizer
var242.Localization = var3.Localization
var5 = var3.withContext(var242)(var5)
return var5
