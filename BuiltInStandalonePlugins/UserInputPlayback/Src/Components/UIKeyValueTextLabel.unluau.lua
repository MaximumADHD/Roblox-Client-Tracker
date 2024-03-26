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
   local var159 = {}
   var159.Size = UDim2.new(1, 0, 0, var1.HeightPx)
   var159.BackgroundTransparency = 1
   var159.LayoutOrder = var0.LayoutOrder
   local var168 = {}
   local var172 = {}
   var172.FillDirection = Enum.FillDirection.Horizontal
   var172.Padding = UDim.new(0, var1.PaddingPx)
   var172.SortOrder = Enum.SortOrder.LayoutOrder
   var172.VerticalAlignment = Enum.VerticalAlignment.Center
   var168.Layout = var1.createElement("UIListLayout", var172)
   local var184 = {}
   var184.Text = var0.Label ... ":"
   var184.Size = UDim2.new(0, var1.KeyWidthPx, 1, 0)
   var184.TextXAlignment = Enum.TextXAlignment.Right
   var184.TextYAlignment = Enum.TextYAlignment.Center
   var184.LayoutOrder = 1
   var168.KeyTextLabel = var1.createElement(var4, var184)
   local var201 = {}
   var201.Text = var0.Value
   var201.Size = UDim2.new(1, var1.KeyWidthPx, 1, 0)
   var201.TextXAlignment = Enum.TextXAlignment.Left
   var201.TextYAlignment = Enum.TextYAlignment.Center
   var201.LayoutOrder = 2
   var168.ValueTextLabel = var1.createElement(var4, var201)
   return var1.createElement("Frame", var159, var168)
end

local var216 = {}
var216.Stylizer = var3.Stylizer
var216.Localization = var3.Localization
var5 = var3.withContext(var216)(var5)
return var5
