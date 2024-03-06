-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TextureGenerator")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = var1.ContextServices
local var4 = var3.Localization
local var5 = var3.Stylizer
local var6 = var1.UI
local var7 = var6.Image
local var8 = var6.Pane
local var9 = var6.TextLabel
local var10 = var6.Tooltip
local var11 = var1.Util.LayoutOrderIterator
local var12 = require(var0.Src.Resources.Theme)
return function(arg1)
   local var0 = var5:use("GenerationAngleHelp")
   local var1 = var4:use()
   local var2 = var11.new()
   local var117 = {}
   var117.AnchorPoint = var0.AnchorPoint
   var117.LayoutOrder = arg1.LayoutOrder
   var117.Position = var0.Position
   var117.Text = var1:getText("GenerationAngleHelp", "Tooltip")
   var117.TextXAlignment = Enum.TextXAlignment.Left
   local var129 = {}
   var129.AutomaticSize = Enum.AutomaticSize.X
   var129.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var129.Layout = Enum.FillDirection.Horizontal
   var129.Padding = var0.Padding
   var129.Spacing = var0.Spacing
   var129.VerticalAlignment = Enum.VerticalAlignment.Center
   var129.ZIndex = var0.ZIndex
   local var137 = {}
   local var141 = {}
   var141.AutomaticSize = Enum.AutomaticSize.X
   var141.LayoutOrder = var2:getNextOrder()
   var141.Style = var0.TextStyle
   var141.Text = var1:getText("GenerationAngleHelp", "Text")
   var137.TextLabel = var2.createElement(var9, var141)
   local var154 = {}
   var154.LayoutOrder = var2:getNextOrder()
   var154.Style = var0.HelpImage
   var137.Image = var2.createElement(var7, var154)
   var117.Child = var2.createElement(var8, var129, var137)
   return var2.createElement(var10, var117)
end
