-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.PluginDetails.ListItem)
local var4 = require(var0.Src.Components.FluidFitTextLabel)
local var5 = var1.Component:extend("ListTextItem")
local var494 = {}
var494.description = ""
var494.title = ""
var494.titleWidth = require(var0.Src.Util.Constants).LIST_ITEM_TITLE_WIDTH
var5.defaultProps = var494
local function fun4(arg1)
   local var0 = arg1.props.description
   local var1 = arg1.props.Stylizer
   local var512 = {}
   var512.LayoutOrder = arg1.props.LayoutOrder
   function var512.renderContent()
      local var516 = {}
      var516.BackgroundTransparency = 1
      var516.Font = var1.Font
      var516.LayoutOrder = 1
      var516.TextSize = 16
      var516.Text = var0
      var516.TextXAlignment = Enum.TextXAlignment.Left
      var516.TextColor3 = var1.TextColor
      return var1.createElement(var4, var516)
   end
   
   var512.title = arg1.props.title
   var512.titleWidth = arg1.props.titleWidth
   return var1.createElement(var3, var512)
end

function var5.render(arg1)
   local var0 = arg1.props.description
   local var1 = arg1.props.Stylizer
   local var512 = {}
   var512.LayoutOrder = arg1.props.LayoutOrder
   function var512.renderContent()
      local var516 = {}
      var516.BackgroundTransparency = 1
      var516.Font = var1.Font
      var516.LayoutOrder = 1
      var516.TextSize = 16
      var516.Text = var0
      var516.TextXAlignment = Enum.TextXAlignment.Left
      var516.TextColor3 = var1.TextColor
      return var1.createElement(var4, var516)
   end
   
   var512.title = arg1.props.title
   var512.titleWidth = arg1.props.titleWidth
   return var1.createElement(var3, var512)
end

fun4 = var2.withContext
local var528 = {}
var528.Stylizer = var2.Stylizer
var5 = fun4(var528)(var5)
return var5
