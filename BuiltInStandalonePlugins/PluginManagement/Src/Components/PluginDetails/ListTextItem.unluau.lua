-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.PluginDetails.ListItem)
local var4 = require(var0.Src.Components.FluidFitTextLabel)
local var5 = var1.Component:extend("ListTextItem")
local var35 = {}
var35.description = ""
var35.title = ""
var35.titleWidth = require(var0.Src.Util.Constants).LIST_ITEM_TITLE_WIDTH
var5.defaultProps = var35
local function fun1(arg1)
   local var0 = arg1.props.description
   local var1 = arg1.props.Stylizer
   local var53 = {}
   var53.LayoutOrder = arg1.props.LayoutOrder
   function var53.renderContent()
      local var57 = {}
      var57.BackgroundTransparency = 1
      var57.Font = var1.Font
      var57.LayoutOrder = 1
      var57.TextSize = 16
      var57.Text = var0
      var57.TextXAlignment = Enum.TextXAlignment.Left
      var57.TextColor3 = var1.TextColor
      return var1.createElement(var4, var57)
   end
   
   var53.title = arg1.props.title
   var53.titleWidth = arg1.props.titleWidth
   return var1.createElement(var3, var53)
end

function var5.render(arg1)
   local var0 = arg1.props.description
   local var1 = arg1.props.Stylizer
   local var53 = {}
   var53.LayoutOrder = arg1.props.LayoutOrder
   function var53.renderContent()
      local var57 = {}
      var57.BackgroundTransparency = 1
      var57.Font = var1.Font
      var57.LayoutOrder = 1
      var57.TextSize = 16
      var57.Text = var0
      var57.TextXAlignment = Enum.TextXAlignment.Left
      var57.TextColor3 = var1.TextColor
      return var1.createElement(var4, var57)
   end
   
   var53.title = arg1.props.title
   var53.titleWidth = arg1.props.titleWidth
   return var1.createElement(var3, var53)
end

fun1 = var2.withContext
local var69 = {}
var69.Stylizer = var2.Stylizer
var5 = fun1(var69)(var5)
return var5
