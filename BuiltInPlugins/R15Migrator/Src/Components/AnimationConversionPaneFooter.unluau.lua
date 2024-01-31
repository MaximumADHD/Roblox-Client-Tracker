-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.UI
local var4 = var3.Pane
local var5 = var3.Separator
local var6 = var3.TextLabel
local var7 = var1.Util.LayoutOrderIterator
local var8 = var1.ContextServices
local var9 = require(var0.Src.Components.ReplaceRevertButtons)
local var10 = var2.PureComponent:extend("AnimationConversionPaneFooter")
function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var2 = var0.Localization
   local var356 = {}
   var356.Size = var0.Size
   var356.LayoutOrder = var0.LayoutOrder
   var356.Layout = Enum.FillDirection.Vertical
   var356.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var356.VerticalAlignment = Enum.VerticalAlignment.Bottom
   var356.Spacing = var1.Spacing
   var356.Padding = var1.Padding
   local var362 = {}
   var362.Buttons = var2.createElement(var9)
   return var2.createElement(var4, var356, var362)
end

local var369 = {}
var369.Stylizer = var8.Stylizer
var369.Localization = var8.Localization
var10 = var8.withContext(var369)(var10)
return var10
