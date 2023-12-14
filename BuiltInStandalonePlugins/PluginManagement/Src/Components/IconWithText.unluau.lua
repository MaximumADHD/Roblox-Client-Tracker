-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.FitFrame)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var2.FitFrameHorizontal
local var5 = var2.FitTextLabel
local var6 = var1.PureComponent:extend("IconWithText")
local var109 = {}
var109.Image = ""
var109.imageSize = 16
var109.imageTopPadding = 0
var109.TextSize = 14
var6.defaultProps = var109
local function fun2(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.imageSize
   local var2 = arg1.props.TextColor3 or var0.TextColor
   local var3 = arg1.props.TextSize
   local var136 = {}
   var136.BackgroundTransparency = 1
   var136.FillDirection = Enum.FillDirection.Horizontal
   var136.height = UDim.new(0, var3)
   var136.LayoutOrder = arg1.props.LayoutOrder
   var136.VerticalAlignment = Enum.VerticalAlignment.Center
   local var144 = {}
   local var148 = {}
   var148.BackgroundTransparency = 1
   var148.LayoutOrder = 0
   var148.Size = UDim2.new(0, var1, 0, var1)
   local var157 = {}
   local var161 = {}
   var161.PaddingTop = UDim.new(0, arg1.props.imageTopPadding)
   var157.Padding = var1.createElement("UIPadding", var161)
   local var170 = {}
   var170.BackgroundTransparency = 1
   var170.Image = arg1.props.Image
   var170.ImageColor3 = var2
   var170.LayoutOrder = 0
   var170.Size = UDim2.new(0, var1, 0, var1)
   var157.Icon = var1.createElement("ImageLabel", var170)
   var144.IconContainer = var1.createElement("Frame", var148, var157)
   local var184 = {}
   var184.BackgroundTransparency = 1
   var184.LayoutOrder = 1
   var184.Font = var0.Font
   var184.Text = arg1.props.Text
   var184.TextColor3 = var2
   var184.TextSize = var3
   var184.width = var5.Width.FitToText
   var144.CountText = var1.createElement(var5, var184)
   return var1.createElement(var4, var136, var144)
end

function var6.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.imageSize
   local var2 = arg1.props.TextColor3 or var0.TextColor
   local var3 = arg1.props.TextSize
   local var136 = {}
   var136.BackgroundTransparency = 1
   var136.FillDirection = Enum.FillDirection.Horizontal
   var136.height = UDim.new(0, var3)
   var136.LayoutOrder = arg1.props.LayoutOrder
   var136.VerticalAlignment = Enum.VerticalAlignment.Center
   local var144 = {}
   local var148 = {}
   var148.BackgroundTransparency = 1
   var148.LayoutOrder = 0
   var148.Size = UDim2.new(0, var1, 0, var1)
   local var157 = {}
   local var161 = {}
   var161.PaddingTop = UDim.new(0, arg1.props.imageTopPadding)
   var157.Padding = var1.createElement("UIPadding", var161)
   local var170 = {}
   var170.BackgroundTransparency = 1
   var170.Image = arg1.props.Image
   var170.ImageColor3 = var2
   var170.LayoutOrder = 0
   var170.Size = UDim2.new(0, var1, 0, var1)
   var157.Icon = var1.createElement("ImageLabel", var170)
   var144.IconContainer = var1.createElement("Frame", var148, var157)
   local var184 = {}
   var184.BackgroundTransparency = 1
   var184.LayoutOrder = 1
   var184.Font = var0.Font
   var184.Text = arg1.props.Text
   var184.TextColor3 = var2
   var184.TextSize = var3
   var184.width = var5.Width.FitToText
   var144.CountText = var1.createElement(var5, var184)
   return var1.createElement(var4, var136, var144)
end

fun2 = var3.withContext
local var193 = {}
var193.Stylizer = var3.Stylizer
var6 = fun2(var193)(var6)
return var6
