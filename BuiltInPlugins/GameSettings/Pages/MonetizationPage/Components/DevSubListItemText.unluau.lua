-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
local var3 = require(var0.Packages.Framework).ContextServices
local var4 = var1.Component:extend("DeveloperSubscriptionListItemText")
local function fun0(arg1)
   local var42 = {}
   var42.Size = arg1.props.Size
   var42.Text = arg1.props.Text
   var42.LayoutOrder = arg1.props.LayoutOrder
   var42.TextXAlignment = arg1.props.Alignment
   var42.BackgroundTransparency = 1
   var42.BorderSizePixel = 0
   return var1.createElement("TextLabel", var2.Dictionary.join(arg1.props.Stylizer.fontStyle.Normal, var42))
end

function var4.render(arg1)
   local var42 = {}
   var42.Size = arg1.props.Size
   var42.Text = arg1.props.Text
   var42.LayoutOrder = arg1.props.LayoutOrder
   var42.TextXAlignment = arg1.props.Alignment
   var42.BackgroundTransparency = 1
   var42.BorderSizePixel = 0
   return var1.createElement("TextLabel", var2.Dictionary.join(arg1.props.Stylizer.fontStyle.Normal, var42))
end

fun0 = var3.withContext
local var47 = {}
var47.Stylizer = var3.Stylizer
var4 = fun0(var47)(var4)
return var4
