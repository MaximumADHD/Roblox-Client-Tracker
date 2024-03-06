-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.PluginDetails.ListItem)
local var4 = require(var0.Src.Components.FluidFitTextLabel)
local var5 = var1.Component:extend("ListTextItem")
local var72 = {}
var72.description = ""
var72.title = ""
var72.titleWidth = require(var0.Src.Util.Constants).LIST_ITEM_TITLE_WIDTH
var5.defaultProps = var72
local function fun1(arg1)
   local var0 = arg1.props.description
   local var1 = arg1.props.Stylizer
   local var90 = {}
   var90.LayoutOrder = arg1.props.LayoutOrder
   function var90.renderContent()
      local var94 = {}
      var94.BackgroundTransparency = 1
      var94.Font = var1.Font
      var94.LayoutOrder = 1
      var94.TextSize = 16
      var94.Text = var0
      var94.TextXAlignment = Enum.TextXAlignment.Left
      var94.TextColor3 = var1.TextColor
      return var1.createElement(var4, var94)
   end
   
   var90.title = arg1.props.title
   var90.titleWidth = arg1.props.titleWidth
   return var1.createElement(var3, var90)
end

function var5.render(arg1)
   local var0 = arg1.props.description
   local var1 = arg1.props.Stylizer
   local var90 = {}
   var90.LayoutOrder = arg1.props.LayoutOrder
   function var90.renderContent()
      local var94 = {}
      var94.BackgroundTransparency = 1
      var94.Font = var1.Font
      var94.LayoutOrder = 1
      var94.TextSize = 16
      var94.Text = var0
      var94.TextXAlignment = Enum.TextXAlignment.Left
      var94.TextColor3 = var1.TextColor
      return var1.createElement(var4, var94)
   end
   
   var90.title = arg1.props.title
   var90.titleWidth = arg1.props.titleWidth
   return var1.createElement(var3, var90)
end

fun1 = var2.withContext
local var106 = {}
var106.Stylizer = var2.Stylizer
var5 = fun1(var106)(var5)
return var5
