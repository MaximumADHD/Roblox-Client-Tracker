-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.PluginDetails.ListItem)
local var4 = require(var0.Src.Components.FluidFitTextLabel)
local var5 = var1.Component:extend("ListTextItem")
local var86 = {}
var86.description = ""
var86.title = ""
var86.titleWidth = require(var0.Src.Util.Constants).LIST_ITEM_TITLE_WIDTH
var5.defaultProps = var86
local function fun1(arg1)
   local var0 = arg1.props.description
   local var1 = arg1.props.Stylizer
   local var104 = {}
   var104.LayoutOrder = arg1.props.LayoutOrder
   function var104.renderContent()
      local var108 = {}
      var108.BackgroundTransparency = 1
      var108.Font = var1.Font
      var108.LayoutOrder = 1
      var108.TextSize = 16
      var108.Text = var0
      var108.TextXAlignment = Enum.TextXAlignment.Left
      var108.TextColor3 = var1.TextColor
      return var1.createElement(var4, var108)
   end
   
   var104.title = arg1.props.title
   var104.titleWidth = arg1.props.titleWidth
   return var1.createElement(var3, var104)
end

function var5.render(arg1)
   local var0 = arg1.props.description
   local var1 = arg1.props.Stylizer
   local var104 = {}
   var104.LayoutOrder = arg1.props.LayoutOrder
   function var104.renderContent()
      local var108 = {}
      var108.BackgroundTransparency = 1
      var108.Font = var1.Font
      var108.LayoutOrder = 1
      var108.TextSize = 16
      var108.Text = var0
      var108.TextXAlignment = Enum.TextXAlignment.Left
      var108.TextColor3 = var1.TextColor
      return var1.createElement(var4, var108)
   end
   
   var104.title = arg1.props.title
   var104.titleWidth = arg1.props.titleWidth
   return var1.createElement(var3, var104)
end

fun1 = var2.withContext
local var120 = {}
var120.Stylizer = var2.Stylizer
var5 = fun1(var120)(var5)
return var5
