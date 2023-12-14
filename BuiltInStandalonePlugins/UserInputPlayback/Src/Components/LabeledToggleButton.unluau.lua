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
local var296 = {}
var296.Disabled = false
var296.Selected = false
var8.defaultProps = var296
function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var306 = {}
   var306.Size = var1.ComponentSize
   var306.AutomaticSize = Enum.AutomaticSize.X
   var306.Layout = Enum.FillDirection.Horizontal
   var306.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var306.VerticalAlignment = Enum.VerticalAlignment.Center
   local var312 = {}
   var312.Left = var1.LeftInsetPx
   var306.Padding = var312
   var306.Spacing = var1.PaddingPx
   var306.LayoutOrder = var0.LayoutOrder
   local var316 = {}
   local var320 = {}
   var320.OnClick = var0.OnClick
   var320.Size = var1.ToggleSize
   var320.Selected = var0.Selected
   var320.AnchorPoint = Vector2.new(0, 0.5)
   var320.Disabled = var0.Disabled
   var316.ToggleButton = var1.createElement(var6, var320)
   local var333 = {}
   var333.Size = UDim2.fromScale(0, 0)
   var333.AutomaticSize = Enum.AutomaticSize.XY
   var333.Text = var0.Text
   var333.TextXAlignment = Enum.TextXAlignment.Left
   var333.TextYAlignment = Enum.TextYAlignment.Center
   if var0.Disabled then
      local var0 = var7.Disabled or nil
   end
   var333.StyleModifier = nil
   var316.TextLabel = var1.createElement(var5, var333)
   return var1.createElement(var4.Pane, var306, var316)
end

local var351 = {}
var351.Stylizer = var3.Stylizer
var8 = var3.withContext(var351)(var8)
return var8
