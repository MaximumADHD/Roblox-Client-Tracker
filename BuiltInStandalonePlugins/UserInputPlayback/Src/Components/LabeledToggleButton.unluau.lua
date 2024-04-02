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
local var211 = {}
var211.Disabled = false
var211.Selected = false
var8.defaultProps = var211
function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var221 = {}
   var221.Size = var1.ComponentSize
   var221.AutomaticSize = Enum.AutomaticSize.X
   var221.Layout = Enum.FillDirection.Horizontal
   var221.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var221.VerticalAlignment = Enum.VerticalAlignment.Center
   local var227 = {}
   var227.Left = var1.LeftInsetPx
   var221.Padding = var227
   var221.Spacing = var1.PaddingPx
   var221.LayoutOrder = var0.LayoutOrder
   local var231 = {}
   local var235 = {}
   var235.OnClick = var0.OnClick
   var235.Size = var1.ToggleSize
   var235.Selected = var0.Selected
   var235.AnchorPoint = Vector2.new(0, 0.5)
   var235.Disabled = var0.Disabled
   var231.ToggleButton = var1.createElement(var6, var235)
   local var248 = {}
   var248.Size = UDim2.fromScale(0, 0)
   var248.AutomaticSize = Enum.AutomaticSize.XY
   var248.Text = var0.Text
   var248.TextXAlignment = Enum.TextXAlignment.Left
   var248.TextYAlignment = Enum.TextYAlignment.Center
   if var0.Disabled then
      local var0 = var7.Disabled or nil
   end
   var248.StyleModifier = nil
   var231.TextLabel = var1.createElement(var5, var248)
   return var1.createElement(var4.Pane, var221, var231)
end

local var266 = {}
var266.Stylizer = var3.Stylizer
var8 = var3.withContext(var266)(var8)
return var8
