-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.FitFrame)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var2.FitFrameVertical
local var5 = var2.FitTextLabel
local var6 = var1.Component:extend("ListItem")
local var525 = {}
function var525.renderContent()
end

var525.title = ""
var525.titleWidth = require(var0.Src.Util.Constants).LIST_ITEM_TITLE_WIDTH
var6.defaultProps = var525
local function fun6(arg1)
   local var0 = arg1.props.titleWidth
   local var1 = arg1.props.Stylizer
   local var542 = {}
   var542.BackgroundTransparency = 1
   var542.contentPadding = UDim.new(0, 20)
   var542.FillDirection = Enum.FillDirection.Horizontal
   var542.LayoutOrder = arg1.props.LayoutOrder
   var542.width = UDim.new(1, 0)
   local var553 = {}
   local var557 = {}
   var557.BackgroundTransparency = 1
   var557.Font = var1.Font
   var557.LayoutOrder = 1
   var557.Text = arg1.props.title
   var557.TextColor3 = var1.SubTextColor
   var557.TextXAlignment = Enum.TextXAlignment.Left
   var557.TextSize = 18
   var557.width = UDim.new(0, var0)
   var553.Title = var1.createElement(var5, var557)
   local var572 = {}
   var572.BackgroundTransparency = 1
   var572.LayoutOrder = 2
   var572.width = UDim.new(1, var0 - 20)
   local var580 = {}
   var580.Content = arg1.props.renderContent()
   var553.Container = var1.createElement(var4, var572, var580)
   return var1.createElement(var4, var542, var553)
end

function var6.render(arg1)
   local var0 = arg1.props.titleWidth
   local var1 = arg1.props.Stylizer
   local var542 = {}
   var542.BackgroundTransparency = 1
   var542.contentPadding = UDim.new(0, 20)
   var542.FillDirection = Enum.FillDirection.Horizontal
   var542.LayoutOrder = arg1.props.LayoutOrder
   var542.width = UDim.new(1, 0)
   local var553 = {}
   local var557 = {}
   var557.BackgroundTransparency = 1
   var557.Font = var1.Font
   var557.LayoutOrder = 1
   var557.Text = arg1.props.title
   var557.TextColor3 = var1.SubTextColor
   var557.TextXAlignment = Enum.TextXAlignment.Left
   var557.TextSize = 18
   var557.width = UDim.new(0, var0)
   var553.Title = var1.createElement(var5, var557)
   local var572 = {}
   var572.BackgroundTransparency = 1
   var572.LayoutOrder = 2
   var572.width = UDim.new(1, var0 - 20)
   local var580 = {}
   var580.Content = arg1.props.renderContent()
   var553.Container = var1.createElement(var4, var572, var580)
   return var1.createElement(var4, var542, var553)
end

fun6 = var3.withContext
local var585 = {}
var585.Stylizer = var3.Stylizer
var6 = fun6(var585)(var6)
return var6
