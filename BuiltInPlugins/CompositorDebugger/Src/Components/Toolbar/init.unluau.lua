-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.Pane
local var5 = var0.Src.Components
local var6 = require(var5.SettingsButton)
local var7 = require(var5.TimeControls)
local var8 = require(var0.Src.Types)
local var9 = var1.PureComponent:extend("Toolbar")
function var9.init(arg1)
end

local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var47 = {}
   var47.Size = var0.Size
   var47.Layout = Enum.FillDirection.Horizontal
   var47.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var47.VerticalAlignment = Enum.VerticalAlignment.Top
   var47.LayoutOrder = var0.LayoutOrder
   var47.BackgroundColor = var1.BackgroundColor
   local var54 = {}
   local var58 = {}
   var58.FrameBuffer = var0.FrameBuffer
   var58.LayoutOrder = 1
   var58.Size = UDim2.new(1, var1.ButtonSize.X.Offset, 1, 0)
   var58.MajorInterval = 5
   var58.MinorInterval = 1
   var54.TimeControls = var1.createElement(var7, var58)
   local var76 = {}
   var76.FrameBuffer = var0.FrameBuffer
   var76.LayoutOrder = 2
   var76.Size = var1.ButtonSize
   var76.AnchorPoint = Vector2.new(1, 0.5)
   var54.SettingsButton = var1.createElement(var6, var76)
   return var1.createElement(var4, var47, var54)
end

function var9.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var47 = {}
   var47.Size = var0.Size
   var47.Layout = Enum.FillDirection.Horizontal
   var47.HorizontalAlignment = Enum.HorizontalAlignment.Left
   var47.VerticalAlignment = Enum.VerticalAlignment.Top
   var47.LayoutOrder = var0.LayoutOrder
   var47.BackgroundColor = var1.BackgroundColor
   local var54 = {}
   local var58 = {}
   var58.FrameBuffer = var0.FrameBuffer
   var58.LayoutOrder = 1
   var58.Size = UDim2.new(1, var1.ButtonSize.X.Offset, 1, 0)
   var58.MajorInterval = 5
   var58.MinorInterval = 1
   var54.TimeControls = var1.createElement(var7, var58)
   local var76 = {}
   var76.FrameBuffer = var0.FrameBuffer
   var76.LayoutOrder = 2
   var76.Size = var1.ButtonSize
   var76.AnchorPoint = Vector2.new(1, 0.5)
   var54.SettingsButton = var1.createElement(var6, var76)
   return var1.createElement(var4, var47, var54)
end

fun1 = var3.withContext
local var86 = {}
var86.Analytics = var3.Analytics
var86.Localization = var3.Localization
var86.Stylizer = var2.Style.Stylizer
var9 = fun1(var86)(var9)
var9 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   return {}
end, function(arg1)
   return {}
end)(var9)
return var9
