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
   local var108 = {}
   var108.Size = UDim2.new(1, 0, 0, var1.HeightPx)
   var108.BackgroundTransparency = 1
   var108.LayoutOrder = var0.LayoutOrder
   local var117 = {}
   local var121 = {}
   var121.FillDirection = Enum.FillDirection.Horizontal
   var121.Padding = UDim.new(0, var1.PaddingPx)
   var121.SortOrder = Enum.SortOrder.LayoutOrder
   var121.VerticalAlignment = Enum.VerticalAlignment.Center
   var117.Layout = var1.createElement("UIListLayout", var121)
   local var133 = {}
   var133.Text = var0.Label ... ":"
   var133.Size = UDim2.new(0, var1.KeyWidthPx, 1, 0)
   var133.TextXAlignment = Enum.TextXAlignment.Right
   var133.TextYAlignment = Enum.TextYAlignment.Center
   var133.LayoutOrder = 1
   var117.KeyTextLabel = var1.createElement(var4, var133)
   local var150 = {}
   var150.Text = var0.Value
   var150.Size = UDim2.new(1, var1.KeyWidthPx, 1, 0)
   var150.TextXAlignment = Enum.TextXAlignment.Left
   var150.TextYAlignment = Enum.TextYAlignment.Center
   var150.LayoutOrder = 2
   var117.ValueTextLabel = var1.createElement(var4, var150)
   return var1.createElement("Frame", var108, var117)
end

local var165 = {}
var165.Stylizer = var3.Stylizer
var165.Localization = var3.Localization
var5 = var3.withContext(var165)(var5)
return var5
