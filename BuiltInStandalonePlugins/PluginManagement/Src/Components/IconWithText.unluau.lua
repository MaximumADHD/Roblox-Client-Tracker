-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.FitFrame)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var2.FitFrameHorizontal
local var5 = var2.FitTextLabel
local var6 = var1.PureComponent:extend("IconWithText")
local var24 = {}
var24.Image = ""
var24.imageSize = 16
var24.imageTopPadding = 0
var24.TextSize = 14
var6.defaultProps = var24
local function fun0(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.imageSize
   local var2 = arg1.props.TextColor3 or var0.TextColor
   local var3 = arg1.props.TextSize
   local var51 = {}
   var51.BackgroundTransparency = 1
   var51.FillDirection = Enum.FillDirection.Horizontal
   var51.height = UDim.new(0, var3)
   var51.LayoutOrder = arg1.props.LayoutOrder
   var51.VerticalAlignment = Enum.VerticalAlignment.Center
   local var59 = {}
   local var63 = {}
   var63.BackgroundTransparency = 1
   var63.LayoutOrder = 0
   var63.Size = UDim2.new(0, var1, 0, var1)
   local var72 = {}
   local var76 = {}
   var76.PaddingTop = UDim.new(0, arg1.props.imageTopPadding)
   var72.Padding = var1.createElement("UIPadding", var76)
   local var85 = {}
   var85.BackgroundTransparency = 1
   var85.Image = arg1.props.Image
   var85.ImageColor3 = var2
   var85.LayoutOrder = 0
   var85.Size = UDim2.new(0, var1, 0, var1)
   var72.Icon = var1.createElement("ImageLabel", var85)
   var59.IconContainer = var1.createElement("Frame", var63, var72)
   local var99 = {}
   var99.BackgroundTransparency = 1
   var99.LayoutOrder = 1
   var99.Font = var0.Font
   var99.Text = arg1.props.Text
   var99.TextColor3 = var2
   var99.TextSize = var3
   var99.width = var5.Width.FitToText
   var59.CountText = var1.createElement(var5, var99)
   return var1.createElement(var4, var51, var59)
end

function var6.render(arg1)
   local var0 = arg1.props.Stylizer
   local var1 = arg1.props.imageSize
   local var2 = arg1.props.TextColor3 or var0.TextColor
   local var3 = arg1.props.TextSize
   local var51 = {}
   var51.BackgroundTransparency = 1
   var51.FillDirection = Enum.FillDirection.Horizontal
   var51.height = UDim.new(0, var3)
   var51.LayoutOrder = arg1.props.LayoutOrder
   var51.VerticalAlignment = Enum.VerticalAlignment.Center
   local var59 = {}
   local var63 = {}
   var63.BackgroundTransparency = 1
   var63.LayoutOrder = 0
   var63.Size = UDim2.new(0, var1, 0, var1)
   local var72 = {}
   local var76 = {}
   var76.PaddingTop = UDim.new(0, arg1.props.imageTopPadding)
   var72.Padding = var1.createElement("UIPadding", var76)
   local var85 = {}
   var85.BackgroundTransparency = 1
   var85.Image = arg1.props.Image
   var85.ImageColor3 = var2
   var85.LayoutOrder = 0
   var85.Size = UDim2.new(0, var1, 0, var1)
   var72.Icon = var1.createElement("ImageLabel", var85)
   var59.IconContainer = var1.createElement("Frame", var63, var72)
   local var99 = {}
   var99.BackgroundTransparency = 1
   var99.LayoutOrder = 1
   var99.Font = var0.Font
   var99.Text = arg1.props.Text
   var99.TextColor3 = var2
   var99.TextSize = var3
   var99.width = var5.Width.FitToText
   var59.CountText = var1.createElement(var5, var99)
   return var1.createElement(var4, var51, var59)
end

fun0 = var3.withContext
local var108 = {}
var108.Stylizer = var3.Stylizer
var6 = fun0(var108)(var6)
return var6
