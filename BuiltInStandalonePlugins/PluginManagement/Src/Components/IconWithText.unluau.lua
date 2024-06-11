-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.FitFrame)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var2.FitFrameHorizontal
local var5 = var2.FitTextLabel
local var6 = var1.PureComponent:extend("IconWithText")
local var181 = {}
var181.Image = ""
var181.imageSize = 16
var181.imageTopPadding = 0
var181.TextSize = 14
var6.defaultProps = var181
local function fun2(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.imageSize
   local var2 = arg1.props.TextColor3 or var0.TextColor
   local var3 = arg1.props.TextSize
   local var208 = {}
   var208.BackgroundTransparency = 1
   var208.FillDirection = Enum.FillDirection.Horizontal
   var208.height = UDim.new(0, var3)
   var208.LayoutOrder = arg1.props.LayoutOrder
   var208.VerticalAlignment = Enum.VerticalAlignment.Center
   local var216 = {}
   local var220 = {}
   var220.BackgroundTransparency = 1
   var220.LayoutOrder = 0
   var220.Size = UDim2.new(0, var1, 0, var1)
   local var229 = {}
   local var233 = {}
   var233.PaddingTop = UDim.new(0, arg1.props.imageTopPadding)
   var229.Padding = var1.createElement("UIPadding", var233)
   local var242 = {}
   var242.BackgroundTransparency = 1
   var242.Image = arg1.props.Image
   var242.ImageColor3 = var2
   var242.LayoutOrder = 0
   var242.Size = UDim2.new(0, var1, 0, var1)
   var229.Icon = var1.createElement("ImageLabel", var242)
   var216.IconContainer = var1.createElement("Frame", var220, var229)
   local var256 = {}
   var256.BackgroundTransparency = 1
   var256.LayoutOrder = 1
   var256.Font = var0.Font
   var256.Text = arg1.props.Text
   var256.TextColor3 = var2
   var256.TextSize = var3
   var256.width = var5.Width.FitToText
   var216.CountText = var1.createElement(var5, var256)
   return var1.createElement(var4, var208, var216)
end

function var6.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.imageSize
   local var2 = arg1.props.TextColor3 or var0.TextColor
   local var3 = arg1.props.TextSize
   local var208 = {}
   var208.BackgroundTransparency = 1
   var208.FillDirection = Enum.FillDirection.Horizontal
   var208.height = UDim.new(0, var3)
   var208.LayoutOrder = arg1.props.LayoutOrder
   var208.VerticalAlignment = Enum.VerticalAlignment.Center
   local var216 = {}
   local var220 = {}
   var220.BackgroundTransparency = 1
   var220.LayoutOrder = 0
   var220.Size = UDim2.new(0, var1, 0, var1)
   local var229 = {}
   local var233 = {}
   var233.PaddingTop = UDim.new(0, arg1.props.imageTopPadding)
   var229.Padding = var1.createElement("UIPadding", var233)
   local var242 = {}
   var242.BackgroundTransparency = 1
   var242.Image = arg1.props.Image
   var242.ImageColor3 = var2
   var242.LayoutOrder = 0
   var242.Size = UDim2.new(0, var1, 0, var1)
   var229.Icon = var1.createElement("ImageLabel", var242)
   var216.IconContainer = var1.createElement("Frame", var220, var229)
   local var256 = {}
   var256.BackgroundTransparency = 1
   var256.LayoutOrder = 1
   var256.Font = var0.Font
   var256.Text = arg1.props.Text
   var256.TextColor3 = var2
   var256.TextSize = var3
   var256.width = var5.Width.FitToText
   var216.CountText = var1.createElement(var5, var256)
   return var1.createElement(var4, var208, var216)
end

fun2 = var3.withContext
local var265 = {}
var265.Stylizer = var3.Stylizer
var6 = fun2(var265)(var6)
return var6
