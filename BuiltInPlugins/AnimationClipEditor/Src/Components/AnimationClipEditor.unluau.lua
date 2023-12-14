-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.EditorController)
local var4 = var1.PureComponent:extend("AnimationClipEditor")
local function fun1(arg1)
   local var59 = {}
   var59.Size = UDim2.new(1, 0, 1, 0)
   var59.BackgroundColor3 = arg1.props.Stylizer.backgroundColor
   local var67 = {}
   local var71 = {}
   var71.Size = UDim2.new(1, 0, 1, 0)
   var67.EditorController = var1.createElement(var3, var71)
   return var1.createElement("Frame", var59, var67)
end

function var4.render(arg1)
   local var59 = {}
   var59.Size = UDim2.new(1, 0, 1, 0)
   var59.BackgroundColor3 = arg1.props.Stylizer.backgroundColor
   local var67 = {}
   local var71 = {}
   var71.Size = UDim2.new(1, 0, 1, 0)
   var67.EditorController = var1.createElement(var3, var71)
   return var1.createElement("Frame", var59, var67)
end

fun1 = var2.withContext
local var80 = {}
var80.Localization = var2.Localization
var80.Plugin = var2.Plugin
var80.Stylizer = var2.Stylizer
var80.Analytics = var2.Analytics
var4 = fun1(var80)(var4)
return var4
