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
local var319 = {}
var319.Disabled = false
var319.Selected = false
var8.defaultProps = var319
function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var329 = {}
   var329.Size = var1.ComponentSize
   var329.AutomaticSize = Enum.AutomaticSize.X
   var329.Layout = Enum.FillDirection.Horizontal
   var329.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var329.VerticalAlignment = Enum.VerticalAlignment.Center
   local var335 = {}
   var335.Left = var1.LeftInsetPx
   var329.Padding = var335
   var329.Spacing = var1.PaddingPx
   var329.LayoutOrder = var0.LayoutOrder
   local var339 = {}
   local var343 = {}
   var343.OnClick = var0.OnClick
   var343.Size = var1.ToggleSize
   var343.Selected = var0.Selected
   var343.AnchorPoint = Vector2.new(0, 0.5)
   var343.Disabled = var0.Disabled
   var339.ToggleButton = var1.createElement(var6, var343)
   local var356 = {}
   var356.Size = UDim2.fromScale(0, 0)
   var356.AutomaticSize = Enum.AutomaticSize.XY
   var356.Text = var0.Text
   var356.TextXAlignment = Enum.TextXAlignment.Left
   var356.TextYAlignment = Enum.TextYAlignment.Center
   if var0.Disabled then
      local var0 = var7.Disabled or nil
   end
   var356.StyleModifier = nil
   var339.TextLabel = var1.createElement(var5, var356)
   return var1.createElement(var4.Pane, var329, var339)
end

local var374 = {}
var374.Stylizer = var3.Stylizer
var8 = var3.withContext(var374)(var8)
return var8
