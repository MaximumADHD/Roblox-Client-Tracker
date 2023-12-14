-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("Separator")
local function fun6(arg1)
   local var0 = arg1.props
   local var190 = {}
   var190.Size = var0.Size or UDim2.new(1, 0, 0, 2)
   var190.Position = var0.Position
   var190.BackgroundColor3 = var0.Stylizer.separator
   local var1 = 0
   var190.BorderSizePixel = var1
   local var2 = var0.LayoutOrder
   var190.LayoutOrder = var1
   return var1.createElement("Frame", var190)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var190 = {}
   var190.Size = var0.Size or UDim2.new(1, 0, 0, 2)
   var190.Position = var0.Position
   var190.BackgroundColor3 = var0.Stylizer.separator
   local var1 = 0
   var190.BorderSizePixel = var1
   local var2 = var0.LayoutOrder
   var190.LayoutOrder = var1
   return var1.createElement("Frame", var190)
end

fun6 = var2.withContext
local var204 = {}
var204.Stylizer = var2.Stylizer
var3 = fun6(var204)(var3)
return var3
