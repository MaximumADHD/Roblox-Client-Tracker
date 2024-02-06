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
   local var361 = {}
   var361.Size = var0.Size
   var361.LayoutOrder = var0.LayoutOrder
   var361.Layout = Enum.FillDirection.Vertical
   var361.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var361.VerticalAlignment = Enum.VerticalAlignment.Bottom
   var361.Spacing = var1.Spacing
   var361.Padding = var1.Padding
   local var367 = {}
   var367.Buttons = var2.createElement(var5)
   return var2.createElement(var3, var361, var367)
end

local var374 = {}
var374.Stylizer = var4.Stylizer
var6 = var4.withContext(var374)(var6)
return var6
