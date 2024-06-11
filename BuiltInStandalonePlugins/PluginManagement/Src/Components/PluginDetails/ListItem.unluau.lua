-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.FitFrame)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var2.FitFrameVertical
local var5 = var2.FitTextLabel
local var6 = var1.Component:extend("ListItem")
local var255 = {}
function var255.renderContent()
end

var255.title = ""
var255.titleWidth = require(var0.Src.Util.Constants).LIST_ITEM_TITLE_WIDTH
var6.defaultProps = var255
local function fun3(arg1)
   local var0 = arg1.props.titleWidth
   local var1 = arg1.props.Stylizer
   local var272 = {}
   var272.BackgroundTransparency = 1
   var272.contentPadding = UDim.new(0, 20)
   var272.FillDirection = Enum.FillDirection.Horizontal
   var272.LayoutOrder = arg1.props.LayoutOrder
   var272.width = UDim.new(1, 0)
   local var283 = {}
   local var287 = {}
   var287.BackgroundTransparency = 1
   var287.Font = var1.Font
   var287.LayoutOrder = 1
   var287.Text = arg1.props.title
   var287.TextColor3 = var1.SubTextColor
   var287.TextXAlignment = Enum.TextXAlignment.Left
   var287.TextSize = 18
   var287.width = UDim.new(0, var0)
   var283.Title = var1.createElement(var5, var287)
   local var302 = {}
   var302.BackgroundTransparency = 1
   var302.LayoutOrder = 2
   var302.width = UDim.new(1, var0 - 20)
   local var310 = {}
   var310.Content = arg1.props.renderContent()
   var283.Container = var1.createElement(var4, var302, var310)
   return var1.createElement(var4, var272, var283)
end

function var6.render(arg1)
   local var0 = arg1.props.titleWidth
   local var1 = arg1.props.Stylizer
   local var272 = {}
   var272.BackgroundTransparency = 1
   var272.contentPadding = UDim.new(0, 20)
   var272.FillDirection = Enum.FillDirection.Horizontal
   var272.LayoutOrder = arg1.props.LayoutOrder
   var272.width = UDim.new(1, 0)
   local var283 = {}
   local var287 = {}
   var287.BackgroundTransparency = 1
   var287.Font = var1.Font
   var287.LayoutOrder = 1
   var287.Text = arg1.props.title
   var287.TextColor3 = var1.SubTextColor
   var287.TextXAlignment = Enum.TextXAlignment.Left
   var287.TextSize = 18
   var287.width = UDim.new(0, var0)
   var283.Title = var1.createElement(var5, var287)
   local var302 = {}
   var302.BackgroundTransparency = 1
   var302.LayoutOrder = 2
   var302.width = UDim.new(1, var0 - 20)
   local var310 = {}
   var310.Content = arg1.props.renderContent()
   var283.Container = var1.createElement(var4, var302, var310)
   return var1.createElement(var4, var272, var283)
end

fun3 = var3.withContext
local var315 = {}
var315.Stylizer = var3.Stylizer
var6 = fun3(var315)(var6)
return var6
