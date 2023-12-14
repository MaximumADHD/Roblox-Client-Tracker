-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.Pane
local var4 = var2.Separator
return function(arg1)
   local var0 = {}
   local var22 = {}
   var22.PaddingTop = UDim.new(0, 4)
   var0.Padding = var1.createElement("UIPadding", var22)
   local var31 = {}
   var31.BackgroundTransparency = 1
   var31.Image = "rbxasset://textures/GameSettings/ArrowLeft.png"
   var31.Size = UDim2.new(0, 24, 0, 24)
   var31.Rotation = 90
   var31.LayoutOrder = 1
   var1.Event.Activated = arg1.OnActivated
   var0.BackButton = var1.createElement("ImageButton", var31)
   local var49 = {}
   var49.LayoutOrder = 2
   var0.Separator = var1.createElement(var4, var49)
   local var55 = {}
   var55.AutomaticSize = Enum.AutomaticSize.Y
   var55.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var55.LayoutOrder = arg1.LayoutOrder
   var55.Layout = Enum.FillDirection.Vertical
   local var62 = UDim.new(0, 8)
   var55.Spacing = var62
   var62 = var0
   return var1.createElement(var3, var55, var62)
end
