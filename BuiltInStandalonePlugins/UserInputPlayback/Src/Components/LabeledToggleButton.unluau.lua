-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.TextLabel
local var6 = var4.ToggleButton
local var7 = var2.Util.StyleModifier
local var8 = var1.PureComponent:extend("LabeledToggleButton")
local var22 = {}
var22.Disabled = false
var22.Selected = false
var8.defaultProps = var22
function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var32 = {}
   var32.Size = var1.ComponentSize
   var32.AutomaticSize = Enum.AutomaticSize.X
   var32.Layout = Enum.FillDirection.Horizontal
   var32.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var32.VerticalAlignment = Enum.VerticalAlignment.Center
   local var38 = {}
   var38.Left = var1.LeftInsetPx
   var32.Padding = var38
   var32.Spacing = var1.PaddingPx
   var32.LayoutOrder = var0.LayoutOrder
   local var42 = {}
   local var46 = {}
   var46.OnClick = var0.OnClick
   var46.Size = var1.ToggleSize
   var46.Selected = var0.Selected
   var46.AnchorPoint = Vector2.new(0, 0.5)
   var46.Disabled = var0.Disabled
   var42.ToggleButton = var1.createElement(var6, var46)
   local var59 = {}
   var59.Size = UDim2.fromScale(0, 0)
   var59.AutomaticSize = Enum.AutomaticSize.XY
   var59.Text = var0.Text
   var59.TextXAlignment = Enum.TextXAlignment.Left
   var59.TextYAlignment = Enum.TextYAlignment.Center
   if var0.Disabled then
      local var0 = var7.Disabled or nil
   end
   var59.StyleModifier = nil
   var42.TextLabel = var1.createElement(var5, var59)
   return var1.createElement(var4.Pane, var32, var42)
end

local var77 = {}
var77.Stylizer = var3.Stylizer
var8 = var3.withContext(var77)(var8)
return var8
