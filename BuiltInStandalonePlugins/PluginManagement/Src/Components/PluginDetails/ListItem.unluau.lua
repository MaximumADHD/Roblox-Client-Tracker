-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.FitFrame)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var2.FitFrameVertical
local var5 = var2.FitTextLabel
local var6 = var1.Component:extend("ListItem")
local var30 = {}
function var30.renderContent()
end

var30.title = ""
var30.titleWidth = require(var0.Src.Util.Constants).LIST_ITEM_TITLE_WIDTH
var6.defaultProps = var30
local function fun1(arg1)
   local var0 = arg1.props.titleWidth
   local var1 = arg1.props.Stylizer
   local var47 = {}
   var47.BackgroundTransparency = 1
   var47.contentPadding = UDim.new(0, 20)
   var47.FillDirection = Enum.FillDirection.Horizontal
   var47.LayoutOrder = arg1.props.LayoutOrder
   var47.width = UDim.new(1, 0)
   local var58 = {}
   local var62 = {}
   var62.BackgroundTransparency = 1
   var62.Font = var1.Font
   var62.LayoutOrder = 1
   var62.Text = arg1.props.title
   var62.TextColor3 = var1.SubTextColor
   var62.TextXAlignment = Enum.TextXAlignment.Left
   var62.TextSize = 18
   var62.width = UDim.new(0, var0)
   var58.Title = var1.createElement(var5, var62)
   local var77 = {}
   var77.BackgroundTransparency = 1
   var77.LayoutOrder = 2
   var77.width = UDim.new(1, var0 - 20)
   local var85 = {}
   var85.Content = arg1.props.renderContent()
   var58.Container = var1.createElement(var4, var77, var85)
   return var1.createElement(var4, var47, var58)
end

function var6.render(arg1)
   local var0 = arg1.props.titleWidth
   local var1 = arg1.props.Stylizer
   local var47 = {}
   var47.BackgroundTransparency = 1
   var47.contentPadding = UDim.new(0, 20)
   var47.FillDirection = Enum.FillDirection.Horizontal
   var47.LayoutOrder = arg1.props.LayoutOrder
   var47.width = UDim.new(1, 0)
   local var58 = {}
   local var62 = {}
   var62.BackgroundTransparency = 1
   var62.Font = var1.Font
   var62.LayoutOrder = 1
   var62.Text = arg1.props.title
   var62.TextColor3 = var1.SubTextColor
   var62.TextXAlignment = Enum.TextXAlignment.Left
   var62.TextSize = 18
   var62.width = UDim.new(0, var0)
   var58.Title = var1.createElement(var5, var62)
   local var77 = {}
   var77.BackgroundTransparency = 1
   var77.LayoutOrder = 2
   var77.width = UDim.new(1, var0 - 20)
   local var85 = {}
   var85.Content = arg1.props.renderContent()
   var58.Container = var1.createElement(var4, var77, var85)
   return var1.createElement(var4, var47, var58)
end

fun1 = var3.withContext
local var90 = {}
var90.Stylizer = var3.Stylizer
var6 = fun1(var90)(var6)
return var6
