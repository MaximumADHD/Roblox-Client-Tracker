-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.FitFrame)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var2.FitFrameVertical
local var5 = var2.FitTextLabel
local var6 = var1.Component:extend("ListItem")
local var69 = {}
function var69.renderContent()
end

var69.title = ""
var69.titleWidth = require(var0.Src.Util.Constants).LIST_ITEM_TITLE_WIDTH
var6.defaultProps = var69
local function fun1(arg1)
   local var0 = arg1.props.titleWidth
   local var1 = arg1.props.Stylizer
   local var86 = {}
   var86.BackgroundTransparency = 1
   var86.contentPadding = UDim.new(0, 20)
   var86.FillDirection = Enum.FillDirection.Horizontal
   var86.LayoutOrder = arg1.props.LayoutOrder
   var86.width = UDim.new(1, 0)
   local var97 = {}
   local var101 = {}
   var101.BackgroundTransparency = 1
   var101.Font = var1.Font
   var101.LayoutOrder = 1
   var101.Text = arg1.props.title
   var101.TextColor3 = var1.SubTextColor
   var101.TextXAlignment = Enum.TextXAlignment.Left
   var101.TextSize = 18
   var101.width = UDim.new(0, var0)
   var97.Title = var1.createElement(var5, var101)
   local var116 = {}
   var116.BackgroundTransparency = 1
   var116.LayoutOrder = 2
   var116.width = UDim.new(1, var0 - 20)
   local var124 = {}
   var124.Content = arg1.props.renderContent()
   var97.Container = var1.createElement(var4, var116, var124)
   return var1.createElement(var4, var86, var97)
end

function var6.render(arg1)
   local var0 = arg1.props.titleWidth
   local var1 = arg1.props.Stylizer
   local var86 = {}
   var86.BackgroundTransparency = 1
   var86.contentPadding = UDim.new(0, 20)
   var86.FillDirection = Enum.FillDirection.Horizontal
   var86.LayoutOrder = arg1.props.LayoutOrder
   var86.width = UDim.new(1, 0)
   local var97 = {}
   local var101 = {}
   var101.BackgroundTransparency = 1
   var101.Font = var1.Font
   var101.LayoutOrder = 1
   var101.Text = arg1.props.title
   var101.TextColor3 = var1.SubTextColor
   var101.TextXAlignment = Enum.TextXAlignment.Left
   var101.TextSize = 18
   var101.width = UDim.new(0, var0)
   var97.Title = var1.createElement(var5, var101)
   local var116 = {}
   var116.BackgroundTransparency = 1
   var116.LayoutOrder = 2
   var116.width = UDim.new(1, var0 - 20)
   local var124 = {}
   var124.Content = arg1.props.renderContent()
   var97.Container = var1.createElement(var4, var116, var124)
   return var1.createElement(var4, var86, var97)
end

fun1 = var3.withContext
local var129 = {}
var129.Stylizer = var3.Stylizer
var6 = fun1(var129)(var6)
return var6
