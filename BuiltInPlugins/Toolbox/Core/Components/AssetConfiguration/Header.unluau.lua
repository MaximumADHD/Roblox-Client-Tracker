-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Packages
local var2 = require(var1.Roact)
local var3 = require(var1.Framework).ContextServices
local var4 = require(var0.Core.Util.Constants)
local var5 = var2.PureComponent:extend("Header")
local function fun1(arg1)
   local var0 = arg1.props
   local var105 = {}
   var105.BackgroundTransparency = 1
   var105.Size = UDim2.new(1, 0, 0, 45)
   local var113 = {}
   local var117 = {}
   var117.PaddingLeft = UDim.new(0, 65531)
   var113.UIPadding = var2.createElement("UIPadding", var117)
   local var126 = {}
   var126.BackgroundTransparency = 1
   local var129 = var4.FONT
   var126.Font = var129
   local var130 = var0.LayoutOrder
   var126.LayoutOrder = var129
   var126.Text = var0.Title
   var126.TextColor3 = var0.Stylizer.publishAsset.textColor
   var126.TextSize = 24
   var126.TextXAlignment = Enum.TextXAlignment.Left
   var126.TextYAlignment = Enum.TextYAlignment.Top
   var126.Size = UDim2.new(0, 0, 0, 45)
   var113.Header = var2.createElement("TextLabel", var126)
   return var2.createElement("Frame", var105, var113)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var105 = {}
   var105.BackgroundTransparency = 1
   var105.Size = UDim2.new(1, 0, 0, 45)
   local var113 = {}
   local var117 = {}
   var117.PaddingLeft = UDim.new(0, 65531)
   var113.UIPadding = var2.createElement("UIPadding", var117)
   local var126 = {}
   var126.BackgroundTransparency = 1
   local var129 = var4.FONT
   var126.Font = var129
   local var130 = var0.LayoutOrder
   var126.LayoutOrder = var129
   var126.Text = var0.Title
   var126.TextColor3 = var0.Stylizer.publishAsset.textColor
   var126.TextSize = 24
   var126.TextXAlignment = Enum.TextXAlignment.Left
   var126.TextYAlignment = Enum.TextYAlignment.Top
   var126.Size = UDim2.new(0, 0, 0, 45)
   var113.Header = var2.createElement("TextLabel", var126)
   return var2.createElement("Frame", var105, var113)
end

fun1 = var3.withContext
local var146 = {}
var146.Stylizer = var3.Stylizer
var5 = fun1(var146)(var5)
return var5
