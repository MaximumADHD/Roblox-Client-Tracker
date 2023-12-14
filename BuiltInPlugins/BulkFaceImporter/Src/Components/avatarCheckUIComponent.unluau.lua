-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(script.Parent.animationFunctions)
local var3 = require(script.Parent.animationCatalogUIComponent)
local var4 = require(var0.Packages.Framework).UI
local var5 = var4.Pane
local var6 = var4.Button
local var7 = var4.DEPRECATED_TextInput
local var8 = var1.PureComponent:extend("avatarCheckUIComponent")
function var8.init(arg1)
   local var31 = {}
   var31.animLoop = true
   var31.playSpeed = 1
   var31.animIsRunning = false
   arg1.state = var31
   arg1.animationID = ""
   function arg1.attachAnimation()
      local var0 = arg1
      if var0.animationID == "" then
         var2.attachAnimation(arg1.animationID)
      end
   end
   
end

function var8.render(arg1)
   local var46 = {}
   var46.BackgroundColor = Color3.fromRGB(100, 100, 100)
   var46.Padding = 10
   var46.Layout = Enum.FillDirection.Vertical
   var46.LayoutOrder = 0
   local var55 = {}
   local var59 = {}
   var59.Size = UDim2.new(1, 0, 0.2, 0)
   var59.Position = UDim2.new(0, 0, 0, 0)
   var59.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
   var59.LayoutOrder = 1
   local var78 = {}
   local var82 = {}
   var82.FillDirection = Enum.FillDirection.Vertical
   var82.HorizontalAlignment = Enum.HorizontalAlignment.Center
   var82.SortOrder = Enum.SortOrder.LayoutOrder
   var82.VerticalAlignment = Enum.VerticalAlignment.Center
   var82.Padding = UDim.new(0, 10)
   var78.UIListLayout = var1.createElement("UIListLayout", var82)
   local var95 = {}
   var95.OnClick = arg1.attachAnimation
   var95.Style = "RoundPrimary"
   var95.Size = UDim2.fromOffset(200, 30)
   var95.Text = "Attach animation from ID"
   var95.LayoutOrder = 1
   local var104 = var1.createElement(var6, var95)
   local var108 = {}
   var108.Size = UDim2.fromOffset(200, 30)
   var108.Style = "FilledRoundedBorder"
   var108.PlaceholderText = "Input animation ID here"
   function var108.OnTextChanged()
      local var0 = arg1
      if var0.animationID == "" then
         var2.attachAnimation(arg1.animationID)
      end
   end
   
   var108.LayoutOrder = 2
   local var122 = var1.createElement(var7, var108)
   var55.First = var1.createElement("Frame", var59, var78)
   local var127 = {}
   var127.Size = UDim2.new(1, 0, 0.6, 0)
   var127.Position = UDim2.new(0, 0, 0.2, 0)
   var127.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
   var127.LayoutOrder = 2
   local var2 = var1.createElement(var3)
   var55.Second = var1.createElement("Frame", var127, {})
   return var1.createElement(var5, var46, var55)
end

return var8
