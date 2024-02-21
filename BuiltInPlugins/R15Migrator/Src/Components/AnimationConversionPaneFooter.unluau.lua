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
   local var336 = {}
   var336.Size = var0.Size
   var336.LayoutOrder = var0.LayoutOrder
   var336.Layout = Enum.FillDirection.Vertical
   var336.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var336.VerticalAlignment = Enum.VerticalAlignment.Bottom
   var336.Spacing = var1.Spacing
   var336.Padding = var1.Padding
   local var342 = {}
   var342.Buttons = var2.createElement(var5)
   return var2.createElement(var3, var336, var342)
end

local var349 = {}
var349.Stylizer = var4.Stylizer
var6 = var4.withContext(var349)(var6)
return var6
