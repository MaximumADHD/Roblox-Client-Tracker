-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("CompositorDebugger")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.Pane
local var5 = require(var0.Src.Components.SettingsButton)
local var6 = require(var0.Src.Types)
local var7 = var1.PureComponent:extend("Toolbar")
function var7.init(arg1)
end

local function fun1(arg1)
   local var0 = arg1.props
   local var44 = {}
   var44.Size = var0.Size
   var44.BackgroundColor = var0.Stylizer.BackgroundColor
   local var47 = {}
   local var51 = {}
   var51.Position = UDim2.fromScale(1, 0.5)
   var51.AnchorPoint = Vector2.new(1, 0.5)
   var47.SettingsButton = var1.createElement(var5, var51)
   return var1.createElement(var4, var44, var47)
end

function var7.render(arg1)
   local var0 = arg1.props
   local var44 = {}
   var44.Size = var0.Size
   var44.BackgroundColor = var0.Stylizer.BackgroundColor
   local var47 = {}
   local var51 = {}
   var51.Position = UDim2.fromScale(1, 0.5)
   var51.AnchorPoint = Vector2.new(1, 0.5)
   var47.SettingsButton = var1.createElement(var5, var51)
   return var1.createElement(var4, var44, var47)
end

fun1 = var3.withContext
local var62 = {}
var62.Analytics = var3.Analytics
var62.Localization = var3.Localization
var62.Stylizer = var2.Style.Stylizer
var7 = fun1(var62)(var7)
var7 = require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   return {}
end, function(arg1)
   return {}
end)(var7)
return var7
