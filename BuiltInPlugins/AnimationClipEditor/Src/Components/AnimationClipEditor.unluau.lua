-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.EditorController)
local var4 = var1.PureComponent:extend("AnimationClipEditor")
local function fun0(arg1)
   local var30 = {}
   var30.Size = UDim2.new(1, 0, 1, 0)
   var30.BackgroundColor3 = arg1.props.Stylizer.backgroundColor
   local var38 = {}
   local var42 = {}
   var42.Size = UDim2.new(1, 0, 1, 0)
   var38.EditorController = var1.createElement(var3, var42)
   return var1.createElement("Frame", var30, var38)
end

function var4.render(arg1)
   local var30 = {}
   var30.Size = UDim2.new(1, 0, 1, 0)
   var30.BackgroundColor3 = arg1.props.Stylizer.backgroundColor
   local var38 = {}
   local var42 = {}
   var42.Size = UDim2.new(1, 0, 1, 0)
   var38.EditorController = var1.createElement(var3, var42)
   return var1.createElement("Frame", var30, var38)
end

fun0 = var2.withContext
local var51 = {}
var51.Localization = var2.Localization
var51.Plugin = var2.Plugin
var51.Stylizer = var2.Stylizer
var51.Analytics = var2.Analytics
var4 = fun0(var51)(var4)
return var4
