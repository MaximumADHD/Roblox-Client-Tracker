-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.UI.Pane
local var4 = var1.ContextServices
local var5 = require(var0.Src.Components.ReplaceRevertButtons)
local var6 = var2.PureComponent:extend("AnimationConversionPaneFooter")
function var6.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var163 = {}
   var163.Size = var0.Size
   var163.LayoutOrder = var0.LayoutOrder
   var163.Layout = Enum.FillDirection.Vertical
   var163.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var163.VerticalAlignment = Enum.VerticalAlignment.Bottom
   var163.Spacing = var1.Spacing
   var163.Padding = var1.Padding
   local var169 = {}
   var169.Buttons = var2.createElement(var5)
   return var2.createElement(var3, var163, var169)
end

local var176 = {}
var176.Stylizer = var4.Stylizer
var6 = var4.withContext(var176)(var6)
return var6
