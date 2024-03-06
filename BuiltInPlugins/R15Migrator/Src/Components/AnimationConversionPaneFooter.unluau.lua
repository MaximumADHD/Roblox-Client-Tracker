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
   local var331 = {}
   var331.Size = var0.Size
   var331.LayoutOrder = var0.LayoutOrder
   var331.Layout = Enum.FillDirection.Vertical
   var331.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var331.VerticalAlignment = Enum.VerticalAlignment.Bottom
   var331.Spacing = var1.Spacing
   var331.Padding = var1.Padding
   local var337 = {}
   var337.Buttons = var2.createElement(var5)
   return var2.createElement(var3, var331, var337)
end

local var344 = {}
var344.Stylizer = var4.Stylizer
var6 = var4.withContext(var344)(var6)
return var6
