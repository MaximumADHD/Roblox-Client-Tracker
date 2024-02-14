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
   local var41 = {}
   var41.Layout = Enum.FillDirection.Horizontal
   var41.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var41.VerticalAlignment = Enum.VerticalAlignment.Top
   var41.Spacing = var2.Spacing
   var41.Padding = var2.Padding
   local var47 = {}
   local var51 = {}
   var51.Size = UDim2.fromOffset(var2.ImageSize, var2.ImageSize)
   var51.Image = var2.WarningIcon
   var51.LayoutOrder = var3:getNextOrder()
   var47.Icon = var1.createElement(var6, var51)
   local var63 = {}
   var63.Layout = Enum.FillDirection.Vertical
   var63.HorizontalAlignment = Enum.HorizontalAlignment.Right
   var63.VerticalAlignment = Enum.VerticalAlignment.Bottom
   var63.Size = var2.TextSize
   var63.LayoutOrder = var3:getNextOrder()
   var63.Spacing = var2.TextSpacing
   local var71 = {}
   local var75 = {}
   var75.Text = var1:getText("PublishingBlocked", "Warning")
   var75.AutomaticSize = Enum.AutomaticSize.Y
   var75.TextXAlignment = Enum.TextXAlignment.Left
   var75.Size = UDim2.new(1, 0, 0, 0)
   var75.Style = "Semibold"
   var71.Warning = var1.createElement(var7, var75)
   local var93 = {}
   var93.Text = var1:getText("PublishingBlocked", "Detail")
   var93.AutomaticSize = Enum.AutomaticSize.Y
   var93.Size = UDim2.new(1, 0, 0, 0)
   var93.TextXAlignment = Enum.TextXAlignment.Left
   var93.TextWrapped = true
   var93.LayoutOrder = var3:getNextOrder()
   var93.Style = "Body"
   var71.Detail = var1.createElement(var7, var93)
   local var114 = {}
   var114.OnClose = var0.OnClose
   var114.OnOpen = var0.OnOpen
   var114.LayoutOrder = var3:getNextOrder()
   var71.Buttons = var1.createElement(var9, var114)
   var47.Text = var1.createElement(var5, var63, var71)
   return var1.createElement(var5, var41, var47)
end

local var121 = {}
var121.Localization = var3.Localization
var121.Stylizer = var3.Stylizer
var10 = var3.withContext(var121)(var10)
return var10
