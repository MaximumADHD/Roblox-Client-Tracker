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
   local var331 = {}
   var331.Layout = Enum.FillDirection.Horizontal
   var331.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var331.VerticalAlignment = Enum.VerticalAlignment.Top
   var331.LayoutOrder = var0.LayoutOrder
   var331.AutomaticSize = Enum.AutomaticSize.XY
   var331.Spacing = var2.Spacing
   var331.Padding = var2.Padding
   local var338 = {}
   local var342 = {}
   var342.Style = "Round"
   var342.Text = var1:getText("PublishingBlockedAction", "Close")
   var342.Size = var2.CloseButtonSize
   var342.OnClick = var0.OnClose
   var342.LayoutOrder = var3:getNextOrder()
   var338.Close = var2.createElement(var6, var342)
   local var355 = {}
   var355.Style = "RoundPrimary"
   var355.Text = var1:getText("PublishingBlockedAction", "GoTo")
   var355.Size = var2.GoToButtonSize
   var355.OnClick = var0.OnOpen
   var355.LayoutOrder = var3:getNextOrder()
   var338.GoTo = var2.createElement(var6, var355)
   return var2.createElement(var5, var331, var338)
end

local var367 = {}
var367.Stylizer = var3.Stylizer
var367.Localization = var3.Localization
var8 = var3.withContext(var367)(var8)
return var8
