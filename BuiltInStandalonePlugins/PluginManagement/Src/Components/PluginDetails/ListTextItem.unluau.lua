-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.PluginDetails.ListItem)
local var4 = require(var0.Src.Components.FluidFitTextLabel)
local var5 = var1.Component:extend("ListTextItem")
local var76 = {}
var76.description = ""
var76.title = ""
var76.titleWidth = require(var0.Src.Util.Constants).LIST_ITEM_TITLE_WIDTH
var5.defaultProps = var76
local function fun1(arg1)
   local var0 = arg1.props.description
   local var1 = arg1.props.Stylizer
   local var94 = {}
   var94.LayoutOrder = arg1.props.LayoutOrder
   function var94.renderContent()
      local var98 = {}
      var98.BackgroundTransparency = 1
      var98.Font = var1.Font
      var98.LayoutOrder = 1
      var98.TextSize = 16
      var98.Text = var0
      var98.TextXAlignment = Enum.TextXAlignment.Left
      var98.TextColor3 = var1.TextColor
      return var1.createElement(var4, var98)
   end
   
   var94.title = arg1.props.title
   var94.titleWidth = arg1.props.titleWidth
   return var1.createElement(var3, var94)
end

function var5.render(arg1)
   local var0 = arg1.props.description
   local var1 = arg1.props.Stylizer
   local var94 = {}
   var94.LayoutOrder = arg1.props.LayoutOrder
   function var94.renderContent()
      local var98 = {}
      var98.BackgroundTransparency = 1
      var98.Font = var1.Font
      var98.LayoutOrder = 1
      var98.TextSize = 16
      var98.Text = var0
      var98.TextXAlignment = Enum.TextXAlignment.Left
      var98.TextColor3 = var1.TextColor
      return var1.createElement(var4, var98)
   end
   
   var94.title = arg1.props.title
   var94.titleWidth = arg1.props.titleWidth
   return var1.createElement(var3, var94)
end

fun1 = var2.withContext
local var110 = {}
var110.Stylizer = var2.Stylizer
var5 = fun1(var110)(var5)
return var5
