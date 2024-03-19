-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.SimpleExpandablePane
local var3 = require(var0.Src.Components.ReplaceOptionsPane)
local var4 = var1.PureComponent:extend("ReplacementRulesExpandablePane")
function var4.render(arg1)
   local var0 = arg1.props
   local var30 = {}
   var30.Size = var0.Size
   var30.Style = "Section"
   var30.LayoutOrder = var0.LayoutOrder
   var30.Text = "Replacement Rules"
   var30.Expanded = false
   local var34 = {}
   var34.ReplaceOptionsPane = var1.createElement(var3)
   return var1.createElement(var2, var30, var34)
end

return var4
