-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var1.Component:extend("DeveloperSubscriptionListHeaderText")
local function fun16(arg1)
   local var1161 = {}
   var1161.Size = arg1.props.Size
   var1161.Text = arg1.props.Text
   var1161.LayoutOrder = arg1.props.LayoutOrder
   var1161.TextXAlignment = arg1.props.Alignment
   var1161.BackgroundTransparency = 1
   var1161.BorderSizePixel = 0
   return var1.createElement("TextLabel", var2.Dictionary.join(arg1.props.Stylizer.fontStyle.Normal, var1161))
end

function var4.render(arg1)
   local var1161 = {}
   var1161.Size = arg1.props.Size
   var1161.Text = arg1.props.Text
   var1161.LayoutOrder = arg1.props.LayoutOrder
   var1161.TextXAlignment = arg1.props.Alignment
   var1161.BackgroundTransparency = 1
   var1161.BorderSizePixel = 0
   return var1.createElement("TextLabel", var2.Dictionary.join(arg1.props.Stylizer.fontStyle.Normal, var1161))
end

fun16 = var3.withContext
local var1166 = {}
var1166.Stylizer = var3.Stylizer
var4 = fun16(var1166)(var4)
return var4
