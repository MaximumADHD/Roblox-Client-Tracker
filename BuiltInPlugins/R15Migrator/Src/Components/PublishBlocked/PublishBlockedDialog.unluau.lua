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
   orderIterator = var8.new()
   local var3 = var2.ImageSize
   local var42 = {}
   var42.Layout = Enum.FillDirection.Horizontal
   var42.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var42.VerticalAlignment = Enum.VerticalAlignment.Top
   var42.Spacing = 30
   var42.Padding = 10
   local var48 = {}
   local var52 = {}
   var52.Size = UDim2.fromOffset(var3, var3)
   var52.Image = var2.WarningIcon
   var52.LayoutOrder = orderIterator:getNextOrder()
   var48.Icon = var1.createElement(var6, var52)
   local var65 = {}
   var65.Layout = Enum.FillDirection.Vertical
   var65.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var65.VerticalAlignment = Enum.VerticalAlignment.Bottom
   var65.Size = var2.TextSize
   var65.LayoutOrder = orderIterator:getNextOrder()
   var65.Spacing = var2.TextSpacing
   local var74 = {}
   local var78 = {}
   var78.Text = var1:getText("PublishingBlocked", "Warning")
   var78.AutomaticSize = Enum.AutomaticSize.Y
   var78.TextXAlignment = Enum.TextXAlignment.Left
   var78.Size = UDim2.new(1, 0, 0, 0)
   var78.Style = "Semibold"
   var74.Warning = var1.createElement(var7, var78)
   local var96 = {}
   var96.Text = var1:getText("PublishingBlocked", "Detail")
   var96.AutomaticSize = Enum.AutomaticSize.Y
   var96.Size = UDim2.new(1, 0, 0, 0)
   var96.TextXAlignment = Enum.TextXAlignment.Left
   var96.TextWrapped = true
   var96.LayoutOrder = orderIterator:getNextOrder()
   var96.Style = "Body"
   var74.Detail = var1.createElement(var7, var96)
   local var118 = {}
   var118.OnClose = var0.OnClose
   var118.OnOpen = var0.OnOpen
   var118.LayoutOrder = orderIterator:getNextOrder()
   var74.Buttons = var1.createElement(var9, var118)
   var48.Text = var1.createElement(var5, var65, var74)
   return var1.createElement(var5, var42, var48)
end

local var126 = {}
var126.Localization = var3.Localization
var126.Stylizer = var3.Stylizer
var10 = var3.withContext(var126)(var10)
return var10
