-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI.SimpleExpandablePane
local var5 = require(var0.Src.Components.ReplaceOptionsPane)
local var6 = var2.PureComponent:extend("ReplacementRulesExpandablePane")
function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var32 = {}
   var32.Size = var0.Size
   var32.Style = "Section"
   var32.LayoutOrder = var0.LayoutOrder
   var32.Text = "Replacement Rules"
   var32.Expanded = true
   local var36 = {}
   var36.ReplaceOptionsPane = var2.createElement(var5)
   return var2.createElement(var4, var32, var36)
end

local var43 = {}
var43.Stylizer = var3.Stylizer
var6 = var3.withContext(var43)(var6)
return var6
