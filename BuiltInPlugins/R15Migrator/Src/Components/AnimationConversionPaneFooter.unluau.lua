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
   local var166 = {}
   var166.Size = var0.Size
   var166.LayoutOrder = var0.LayoutOrder
   var166.Layout = Enum.FillDirection.Vertical
   var166.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var166.VerticalAlignment = Enum.VerticalAlignment.Bottom
   var166.Spacing = var1.Spacing
   var166.Padding = var1.Padding
   local var172 = {}
   var172.Buttons = var2.createElement(var5)
   return var2.createElement(var3, var166, var172)
end

local var179 = {}
var179.Stylizer = var4.Stylizer
var6 = var4.withContext(var179)(var6)
return var6
