-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.FitFrame)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var2.FitFrameVertical
local var5 = var2.FitTextLabel
local var6 = var1.Component:extend("ListItem")
local var138 = {}
function var138.renderContent()
end

var138.title = ""
var138.titleWidth = require(var0.Src.Util.Constants).LIST_ITEM_TITLE_WIDTH
var6.defaultProps = var138
local function fun1(arg1)
   local var0 = arg1.props.titleWidth
   local var1 = arg1.props.Stylizer
   local var155 = {}
   var155.BackgroundTransparency = 1
   var155.contentPadding = UDim.new(0, 20)
   var155.FillDirection = Enum.FillDirection.Horizontal
   var155.LayoutOrder = arg1.props.LayoutOrder
   var155.width = UDim.new(1, 0)
   local var166 = {}
   local var170 = {}
   var170.BackgroundTransparency = 1
   var170.Font = var1.Font
   var170.LayoutOrder = 1
   var170.Text = arg1.props.title
   var170.TextColor3 = var1.SubTextColor
   var170.TextXAlignment = Enum.TextXAlignment.Left
   var170.TextSize = 18
   var170.width = UDim.new(0, var0)
   var166.Title = var1.createElement(var5, var170)
   local var185 = {}
   var185.BackgroundTransparency = 1
   var185.LayoutOrder = 2
   var185.width = UDim.new(1, var0 - 20)
   local var193 = {}
   var193.Content = arg1.props.renderContent()
   var166.Container = var1.createElement(var4, var185, var193)
   return var1.createElement(var4, var155, var166)
end

function var6.render(arg1)
   local var0 = arg1.props.titleWidth
   local var1 = arg1.props.Stylizer
   local var155 = {}
   var155.BackgroundTransparency = 1
   var155.contentPadding = UDim.new(0, 20)
   var155.FillDirection = Enum.FillDirection.Horizontal
   var155.LayoutOrder = arg1.props.LayoutOrder
   var155.width = UDim.new(1, 0)
   local var166 = {}
   local var170 = {}
   var170.BackgroundTransparency = 1
   var170.Font = var1.Font
   var170.LayoutOrder = 1
   var170.Text = arg1.props.title
   var170.TextColor3 = var1.SubTextColor
   var170.TextXAlignment = Enum.TextXAlignment.Left
   var170.TextSize = 18
   var170.width = UDim.new(0, var0)
   var166.Title = var1.createElement(var5, var170)
   local var185 = {}
   var185.BackgroundTransparency = 1
   var185.LayoutOrder = 2
   var185.width = UDim.new(1, var0 - 20)
   local var193 = {}
   var193.Content = arg1.props.renderContent()
   var166.Container = var1.createElement(var4, var185, var193)
   return var1.createElement(var4, var155, var166)
end

fun1 = var3.withContext
local var198 = {}
var198.Stylizer = var3.Stylizer
var6 = fun1(var198)(var6)
return var6
