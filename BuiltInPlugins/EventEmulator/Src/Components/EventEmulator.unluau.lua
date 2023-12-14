-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI
local var5 = var4.Container
local var6 = var4.Box
local var7 = var0.Src.Components
local var8 = require(var7.InputPane)
local var9 = require(var7.RepopulatableHistory)
local var10 = var1.PureComponent:extend("EventEmulator")
local function fun0(arg1)
   local var41 = {}
   var41.Size = UDim2.new(1, 0, 1, 0)
   var41.Background = var6
   local var49 = {}
   var49.Layout = var1.createElement("UIListLayout", arg1.props.Stylizer.Layout.Vertical)
   var49.InputPane = var1.createElement(var8)
   var49.History = var1.createElement(var9)
   return var1.createElement(var5, var41, var49)
end

function var10.render(arg1)
   local var41 = {}
   var41.Size = UDim2.new(1, 0, 1, 0)
   var41.Background = var6
   local var49 = {}
   var49.Layout = var1.createElement("UIListLayout", arg1.props.Stylizer.Layout.Vertical)
   var49.InputPane = var1.createElement(var8)
   var49.History = var1.createElement(var9)
   return var1.createElement(var5, var41, var49)
end

fun0 = var3.withContext
local var64 = {}
var64.Stylizer = var3.Stylizer
var10 = fun0(var64)(var10)
return require(var0.Packages.RoactRodux).connect(function(arg1, arg2)
   local var0 = {}
   var0.ActiveView = arg1.Status.ActiveView
   return var0
end)(var10)
