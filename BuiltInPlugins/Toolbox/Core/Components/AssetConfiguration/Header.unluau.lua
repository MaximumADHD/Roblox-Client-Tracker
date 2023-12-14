-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework).ContextServices
local var4 = require(var0.Core.Util.Constants)
local var5 = var2.PureComponent:extend("Header")
local function fun0(arg1)
   local var0 = arg1.props
   local var28 = {}
   var28.BackgroundTransparency = 1
   var28.Size = UDim2.new(1, 0, 0, 45)
   local var36 = {}
   local var40 = {}
   var40.PaddingLeft = UDim.new(0, 65531)
   var36.UIPadding = var2.createElement("UIPadding", var40)
   local var49 = {}
   var49.BackgroundTransparency = 1
   local var52 = var4.FONT
   var49.Font = var52
   local var53 = var0.LayoutOrder
   var49.LayoutOrder = var52
   var49.Text = var0.Title
   var49.TextColor3 = var0.Stylizer.publishAsset.textColor
   var49.TextSize = 24
   var49.TextXAlignment = Enum.TextXAlignment.Left
   var49.TextYAlignment = Enum.TextYAlignment.Top
   var49.Size = UDim2.new(0, 0, 0, 45)
   var36.Header = var2.createElement("TextLabel", var49)
   return var2.createElement("Frame", var28, var36)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var28 = {}
   var28.BackgroundTransparency = 1
   var28.Size = UDim2.new(1, 0, 0, 45)
   local var36 = {}
   local var40 = {}
   var40.PaddingLeft = UDim.new(0, 65531)
   var36.UIPadding = var2.createElement("UIPadding", var40)
   local var49 = {}
   var49.BackgroundTransparency = 1
   local var52 = var4.FONT
   var49.Font = var52
   local var53 = var0.LayoutOrder
   var49.LayoutOrder = var52
   var49.Text = var0.Title
   var49.TextColor3 = var0.Stylizer.publishAsset.textColor
   var49.TextSize = 24
   var49.TextXAlignment = Enum.TextXAlignment.Left
   var49.TextYAlignment = Enum.TextYAlignment.Top
   var49.Size = UDim2.new(0, 0, 0, 45)
   var36.Header = var2.createElement("TextLabel", var49)
   return var2.createElement("Frame", var28, var36)
end

fun0 = var3.withContext
local var69 = {}
var69.Stylizer = var3.Stylizer
var5 = fun0(var69)(var5)
return var5
