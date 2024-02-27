-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework).ContextServices
local var4 = require(var0.Core.Util.Constants)
local var5 = var2.PureComponent:extend("Header")
local function fun1(arg1)
   local var0 = arg1.props
   local var100 = {}
   var100.BackgroundTransparency = 1
   var100.Size = UDim2.new(1, 0, 0, 45)
   local var108 = {}
   local var112 = {}
   var112.PaddingLeft = UDim.new(0, 65531)
   var108.UIPadding = var2.createElement("UIPadding", var112)
   local var121 = {}
   var121.BackgroundTransparency = 1
   local var124 = var4.FONT
   var121.Font = var124
   local var125 = var0.LayoutOrder
   var121.LayoutOrder = var124
   var121.Text = var0.Title
   var121.TextColor3 = var0.Stylizer.publishAsset.textColor
   var121.TextSize = 24
   var121.TextXAlignment = Enum.TextXAlignment.Left
   var121.TextYAlignment = Enum.TextYAlignment.Top
   var121.Size = UDim2.new(0, 0, 0, 45)
   var108.Header = var2.createElement("TextLabel", var121)
   return var2.createElement("Frame", var100, var108)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var100 = {}
   var100.BackgroundTransparency = 1
   var100.Size = UDim2.new(1, 0, 0, 45)
   local var108 = {}
   local var112 = {}
   var112.PaddingLeft = UDim.new(0, 65531)
   var108.UIPadding = var2.createElement("UIPadding", var112)
   local var121 = {}
   var121.BackgroundTransparency = 1
   local var124 = var4.FONT
   var121.Font = var124
   local var125 = var0.LayoutOrder
   var121.LayoutOrder = var124
   var121.Text = var0.Title
   var121.TextColor3 = var0.Stylizer.publishAsset.textColor
   var121.TextSize = 24
   var121.TextXAlignment = Enum.TextXAlignment.Left
   var121.TextYAlignment = Enum.TextYAlignment.Top
   var121.Size = UDim2.new(0, 0, 0, 45)
   var108.Header = var2.createElement("TextLabel", var121)
   return var2.createElement("Frame", var100, var108)
end

fun1 = var3.withContext
local var141 = {}
var141.Stylizer = var3.Stylizer
var5 = fun1(var141)(var5)
return var5
