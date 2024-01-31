-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.Roact)
local var3 = var1.ContextServices
local var4 = var1.UI
local var5 = var4.Pane
local var6 = var4.Button
local var7 = var1.Util.LayoutOrderIterator
local var8 = var2.PureComponent:extend("Buttons")
function var8.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var7.new()
   local var332 = {}
   var332.Layout = Enum.FillDirection.Horizontal
   var332.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var332.VerticalAlignment = Enum.VerticalAlignment.Top
   var332.LayoutOrder = var0.LayoutOrder
   var332.AutomaticSize = Enum.AutomaticSize.XY
   var332.Spacing = var2.Spacing
   var332.Padding = var2.Padding
   local var339 = {}
   local var343 = {}
   var343.Style = "Round"
   var343.Text = var1:getText("PublishingBlockedAction", "Close")
   var343.Size = var2.CloseButtonSize
   var343.OnClick = var0.OnClose
   var343.LayoutOrder = var3:getNextOrder()
   var339.Close = var2.createElement(var6, var343)
   local var356 = {}
   var356.Style = "RoundPrimary"
   var356.Text = var1:getText("PublishingBlockedAction", "GoTo")
   var356.Size = var2.GoToButtonSize
   var356.OnClick = var0.OnOpen
   var356.LayoutOrder = var3:getNextOrder()
   var339.GoTo = var2.createElement(var6, var356)
   return var2.createElement(var5, var332, var339)
end

local var368 = {}
var368.Stylizer = var3.Stylizer
var368.Localization = var3.Localization
var8 = var3.withContext(var368)(var8)
return var8
