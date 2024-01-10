-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Pane
local var6 = var4.Image
local var7 = var4.TextLabel
local var8 = var2.Util.LayoutOrderIterator
local var9 = require(var0.Src.Components.PublishBlocked.Buttons)
local var10 = var1.PureComponent:extend("PublishBlockedDialog")
function var10.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Localization
   local var2 = var0.Stylizer
   local var3 = var8.new()
   local var4 = var2.ImageSize
   local var42 = {}
   var42.Layout = Enum.FillDirection.Horizontal
   var42.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var42.VerticalAlignment = Enum.VerticalAlignment.Top
   var42.Spacing = 30
   var42.Padding = 10
   local var48 = {}
   local var52 = {}
   var52.Size = UDim2.fromOffset(var4, var4)
   var52.Image = var2.WarningIcon
   var52.LayoutOrder = var3:getNextOrder()
   var48.Icon = var1.createElement(var6, var52)
   local var64 = {}
   var64.Layout = Enum.FillDirection.Vertical
   var64.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var64.VerticalAlignment = Enum.VerticalAlignment.Bottom
   var64.Size = var2.TextSize
   var64.LayoutOrder = var3:getNextOrder()
   var64.Spacing = var2.TextSpacing
   local var72 = {}
   local var76 = {}
   var76.Text = var1:getText("PublishingBlocked", "Warning")
   var76.AutomaticSize = Enum.AutomaticSize.Y
   var76.TextXAlignment = Enum.TextXAlignment.Left
   var76.Size = UDim2.new(1, 0, 0, 0)
   var76.Style = "Semibold"
   var72.Warning = var1.createElement(var7, var76)
   local var94 = {}
   var94.Text = var1:getText("PublishingBlocked", "Detail")
   var94.AutomaticSize = Enum.AutomaticSize.Y
   var94.Size = UDim2.new(1, 0, 0, 0)
   var94.TextXAlignment = Enum.TextXAlignment.Left
   var94.TextWrapped = true
   var94.LayoutOrder = var3:getNextOrder()
   var94.Style = "Body"
   var72.Detail = var1.createElement(var7, var94)
   local var115 = {}
   var115.OnClose = var0.OnClose
   var115.OnOpen = var0.OnOpen
   var115.LayoutOrder = var3:getNextOrder()
   var72.Buttons = var1.createElement(var9, var115)
   var48.Text = var1.createElement(var5, var64, var72)
   return var1.createElement(var5, var42, var48)
end

local var122 = {}
var122.Localization = var3.Localization
var122.Stylizer = var3.Stylizer
var10 = var3.withContext(var122)(var10)
return var10
