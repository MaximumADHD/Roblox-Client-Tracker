-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.Util.StyleModifier
local var5 = var2.UI
local var6 = var5.Pane
local var7 = var2.UI.Button
local var8 = var5.TextLabel
local var9 = var5.Container
local var10 = var5.Tooltip
local var11 = var5.HoverArea
local var12 = var5.LoadingIndicator
local var13 = var1.PureComponent:extend("WarningOverlay")
function var13.init(arg1)
end

local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Image
   local var40 = {}
   var40.AutomaticSize = Enum.AutomaticSize.XY
   var40.Position = var0.Position
   var40.AnchorPoint = var0.AnchorPoint
   local var42 = {}
   var42.Left = 10
   var42.Right = 10
   var42.Top = 5
   var42.Bottom = 5
   var40.Padding = var42
   var40.Layout = Enum.FillDirection.Horizontal
   var40.Spacing = 8
   var40.VerticalAlignment = Enum.VerticalAlignment.Center
   var40.ZIndex = 1
   var40.Style = "RoundBox"
   var40.ImageTransparency = 0.1
   var40.LayoutOrder = var0.LayoutOrder
   local var53 = {}
   if var1 == "props" then
      local var0 = false
      if var1 == "" then
         local var59 = {}
         var59.BackgroundTransparency = 1
         var59.Size = UDim2.new(0, 15, 0, 15)
         var59.Position = UDim2.new(0, 19, 0, 5)
         var59.Image = var1
         local var0 = var1.createElement("ImageLabel", var59)
      end
   end
   var53.Image = false
   local var77 = {}
   var77.AutomaticSize = Enum.AutomaticSize.XY
   var77.TextXAlignment = Enum.TextXAlignment.Left
   var77.Text = var0.TitleText
   var77.BackgroundTransparency = 1
   var77.TextWrapped = true
   var77.LayoutOrder = 1
   var53.Message = var1.createElement(var8, var77)
   return var1.createElement(var6, var40, var53)
end

function var13.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Image
   local var40 = {}
   var40.AutomaticSize = Enum.AutomaticSize.XY
   var40.Position = var0.Position
   var40.AnchorPoint = var0.AnchorPoint
   local var42 = {}
   var42.Left = 10
   var42.Right = 10
   var42.Top = 5
   var42.Bottom = 5
   var40.Padding = var42
   var40.Layout = Enum.FillDirection.Horizontal
   var40.Spacing = 8
   var40.VerticalAlignment = Enum.VerticalAlignment.Center
   var40.ZIndex = 1
   var40.Style = "RoundBox"
   var40.ImageTransparency = 0.1
   var40.LayoutOrder = var0.LayoutOrder
   local var53 = {}
   if var1 == "props" then
      local var0 = false
      if var1 == "" then
         local var59 = {}
         var59.BackgroundTransparency = 1
         var59.Size = UDim2.new(0, 15, 0, 15)
         var59.Position = UDim2.new(0, 19, 0, 5)
         var59.Image = var1
         local var0 = var1.createElement("ImageLabel", var59)
      end
   end
   var53.Image = false
   local var77 = {}
   var77.AutomaticSize = Enum.AutomaticSize.XY
   var77.TextXAlignment = Enum.TextXAlignment.Left
   var77.Text = var0.TitleText
   var77.BackgroundTransparency = 1
   var77.TextWrapped = true
   var77.LayoutOrder = 1
   var53.Message = var1.createElement(var8, var77)
   return var1.createElement(var6, var40, var53)
end

fun1 = var3.withContext
local var85 = {}
var85.Stylizer = var3.Stylizer
var85.Localization = var3.Localization
var13 = fun1(var85)(var13)
return var13
