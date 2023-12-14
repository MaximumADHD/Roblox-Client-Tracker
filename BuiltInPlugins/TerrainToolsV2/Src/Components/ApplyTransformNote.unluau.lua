-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI
local var5 = var4.Pane
local var6 = var4.TextLabel
local var7 = var2.PureComponent:extend("ApplyTransformNote")
local function fun0(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer.ApplyTransformNote
   local var30 = {}
   var30.target = game:GetService("CoreGui")
   local var35 = {}
   local var40 = {}
   local var44 = {}
   var44.AnchorPoint = Vector2.new(0.5, 0)
   var44.AutomaticSize = Enum.AutomaticSize.X
   var44.BackgroundColor = var2.Background
   var44.Layout = Enum.FillDirection.Horizontal
   var44.Spacing = var2.FramePadding
   var44.Padding = var2.FramePadding
   var44.Position = UDim2.new(0.5, 0, 0, var2.EdgePadding)
   var44.Size = UDim2.fromOffset(0, 25)
   local var64 = {}
   local var68 = {}
   var68.AutomaticSize = Enum.AutomaticSize.XY
   var68.BackgroundColor = var2.KeyBackground
   var68.Padding = var2.TextMargin
   var68.LayoutOrder = 1
   local var73 = {}
   local var77 = {}
   var77.CornerRadius = UDim.new(0, 4)
   var73.Corner = var2.createElement("UICorner", var77)
   local var86 = {}
   var86.Text = var1:getText("TransformAction", "PressEnter")
   var73.Text = var2.createElement(var6, var86)
   var64.Enter = var2.createElement(var5, var68, var73)
   local var96 = {}
   var96.AutomaticSize = Enum.AutomaticSize.XY
   var96.Padding = var2.TextMargin
   var96.LayoutOrder = 2
   local var100 = {}
   local var104 = {}
   var104.Text = var1:getText("TransformAction", "ApplyStatusTip")
   var100.Text = var2.createElement(var6, var104)
   var64.Apply = var2.createElement(var5, var96, var100)
   var40.Frame = var2.createElement(var5, var44, var64)
   var35.ApplyTransformNote = var2.createElement("ScreenGui", {}, var40)
   return var2.createElement(var2.Portal, var30, var35)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer.ApplyTransformNote
   local var30 = {}
   var30.target = game:GetService("CoreGui")
   local var35 = {}
   local var40 = {}
   local var44 = {}
   var44.AnchorPoint = Vector2.new(0.5, 0)
   var44.AutomaticSize = Enum.AutomaticSize.X
   var44.BackgroundColor = var2.Background
   var44.Layout = Enum.FillDirection.Horizontal
   var44.Spacing = var2.FramePadding
   var44.Padding = var2.FramePadding
   var44.Position = UDim2.new(0.5, 0, 0, var2.EdgePadding)
   var44.Size = UDim2.fromOffset(0, 25)
   local var64 = {}
   local var68 = {}
   var68.AutomaticSize = Enum.AutomaticSize.XY
   var68.BackgroundColor = var2.KeyBackground
   var68.Padding = var2.TextMargin
   var68.LayoutOrder = 1
   local var73 = {}
   local var77 = {}
   var77.CornerRadius = UDim.new(0, 4)
   var73.Corner = var2.createElement("UICorner", var77)
   local var86 = {}
   var86.Text = var1:getText("TransformAction", "PressEnter")
   var73.Text = var2.createElement(var6, var86)
   var64.Enter = var2.createElement(var5, var68, var73)
   local var96 = {}
   var96.AutomaticSize = Enum.AutomaticSize.XY
   var96.Padding = var2.TextMargin
   var96.LayoutOrder = 2
   local var100 = {}
   local var104 = {}
   var104.Text = var1:getText("TransformAction", "ApplyStatusTip")
   var100.Text = var2.createElement(var6, var104)
   var64.Apply = var2.createElement(var5, var96, var100)
   var40.Frame = var2.createElement(var5, var44, var64)
   var35.ApplyTransformNote = var2.createElement("ScreenGui", {}, var40)
   return var2.createElement(var2.Portal, var30, var35)
end

fun0 = var3.withContext
local var114 = {}
var114.Localization = var3.Localization
var114.Stylizer = var3.Stylizer
return fun0(var114)(var7)
