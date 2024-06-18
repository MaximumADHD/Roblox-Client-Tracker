-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.Dash.join
local var5 = var2.UI
local var6 = var5.IconButton
local var7 = var5.Pane
local var8 = var5.TextLabel
local var9 = var0.Src.Actions
local var10 = var0.Src.Components
local var11 = require(var0.Src.Types)
local var12 = var0.Src.Util
local var13 = var1.PureComponent:extend("TagComponent")
local function fun1(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var40 = {}
   var40.Padding = var1.Padding
   var40.AutomaticSize = Enum.AutomaticSize.XY
   var40.LayoutOrder = var1.LayoutOrder
   var40.Layout = Enum.FillDirection.Horizontal
   var40.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var40.VerticalAlignment = Enum.VerticalAlignment.Center
   local var47 = {}
   var47.Left = 6
   var47.Right = 6
   var40.Padding = var47
   var40.Spacing = 6
   var1.Tag = "Secondary"
   local var54 = {}
   local var58 = {}
   var58.AutomaticSize = Enum.AutomaticSize.XY
   var58.LayoutOrder = 1
   var58.Text = var1.Tag.Label
   var54.Label = var1.createElement(var8, var58)
   local var67 = {}
   var67.BackgroundTransparency = 1
   var67.LayoutOrder = 2
   var67.Size = UDim2.fromOffset(12, 12)
   var67.Image = "rbxasset://textures/StudioSharedUI/clear-hover.png"
   function var1.Event.MouseButton1Click()
      arg1.props.OnClosed(var1.Tag)
   end
   
   var54.CloseButton = var1.createElement("ImageButton", var67)
   return var1.createElement(var7, var40, var54)
end

function var13.render(arg1)
   local var0 = arg1.state
   local var1 = arg1.props
   local var40 = {}
   var40.Padding = var1.Padding
   var40.AutomaticSize = Enum.AutomaticSize.XY
   var40.LayoutOrder = var1.LayoutOrder
   var40.Layout = Enum.FillDirection.Horizontal
   var40.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var40.VerticalAlignment = Enum.VerticalAlignment.Center
   local var47 = {}
   var47.Left = 6
   var47.Right = 6
   var40.Padding = var47
   var40.Spacing = 6
   var1.Tag = "Secondary"
   local var54 = {}
   local var58 = {}
   var58.AutomaticSize = Enum.AutomaticSize.XY
   var58.LayoutOrder = 1
   var58.Text = var1.Tag.Label
   var54.Label = var1.createElement(var8, var58)
   local var67 = {}
   var67.BackgroundTransparency = 1
   var67.LayoutOrder = 2
   var67.Size = UDim2.fromOffset(12, 12)
   var67.Image = "rbxasset://textures/StudioSharedUI/clear-hover.png"
   function var1.Event.MouseButton1Click()
      arg1.props.OnClosed(var1.Tag)
   end
   
   var54.CloseButton = var1.createElement("ImageButton", var67)
   return var1.createElement(var7, var40, var54)
end

fun1 = var3.withContext
local var85 = {}
var85.Analytics = var3.Analytics
var85.Localization = var3.Localization
var85.Stylizer = var2.Style.Stylizer
var13 = fun1(var85)(var13)
return var13
