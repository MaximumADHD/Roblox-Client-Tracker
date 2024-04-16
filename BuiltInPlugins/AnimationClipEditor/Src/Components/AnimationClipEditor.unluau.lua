-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Components.EditorController)
local var4 = var1.PureComponent:extend("AnimationClipEditor")
local function fun0(arg1)
   local var67 = {}
   var67.Size = UDim2.new(1, 0, 1, 0)
   var67.BackgroundColor3 = arg1.props.Stylizer.backgroundColor
   local var75 = {}
   local var79 = {}
   var79.Size = UDim2.new(1, 0, 1, 0)
   var75.EditorController = var1.createElement(var3, var79)
   return var1.createElement("Frame", var67, var75)
end

function var4.render(arg1)
   local var67 = {}
   var67.Size = UDim2.new(1, 0, 1, 0)
   var67.BackgroundColor3 = arg1.props.Stylizer.backgroundColor
   local var75 = {}
   local var79 = {}
   var79.Size = UDim2.new(1, 0, 1, 0)
   var75.EditorController = var1.createElement(var3, var79)
   return var1.createElement("Frame", var67, var75)
end

fun0 = var2.withContext
local var88 = {}
var88.Localization = var2.Localization
var88.Plugin = var2.Plugin
var88.Stylizer = var2.Stylizer
var88.Analytics = var2.Analytics
var4 = fun0(var88)(var4)
return var4
