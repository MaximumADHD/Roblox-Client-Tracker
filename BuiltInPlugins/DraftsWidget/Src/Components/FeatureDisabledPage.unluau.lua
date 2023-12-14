-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.Component:extend("FeatureDisabledPage")
local function fun0(arg1)
   local var0 = arg1.props.Stylizer
   local var26 = {}
   var26.BackgroundTransparency = 1
   var26.Size = UDim2.new(1, 0, 1, 0)
   local var34 = {}
   local var38 = {}
   var38.PaddingBottom = UDim.new(0, 16)
   var38.PaddingTop = UDim.new(0, 16)
   var38.PaddingLeft = UDim.new(0, 16)
   var38.PaddingRight = UDim.new(0, 16)
   var34.UIPadding = var1.createElement("UIPadding", var38)
   local var59 = {}
   var59.Size = UDim2.new(1, 0, 1, 0)
   var59.BackgroundTransparency = 1
   var59.Text = arg1.props.Text
   var59.Font = var0.labels.MainFont
   var59.TextColor3 = var0.labels.MainText
   var59.TextSize = 18
   var59.TextXAlignment = Enum.TextXAlignment.Center
   var59.TextYAlignment = Enum.TextYAlignment.Center
   var59.TextWrapped = true
   var34.Error = var1.createElement("TextLabel", var59)
   return var1.createElement("Frame", var26, var34)
end

function var3.render(arg1)
   local var0 = arg1.props.Stylizer
   local var26 = {}
   var26.BackgroundTransparency = 1
   var26.Size = UDim2.new(1, 0, 1, 0)
   local var34 = {}
   local var38 = {}
   var38.PaddingBottom = UDim.new(0, 16)
   var38.PaddingTop = UDim.new(0, 16)
   var38.PaddingLeft = UDim.new(0, 16)
   var38.PaddingRight = UDim.new(0, 16)
   var34.UIPadding = var1.createElement("UIPadding", var38)
   local var59 = {}
   var59.Size = UDim2.new(1, 0, 1, 0)
   var59.BackgroundTransparency = 1
   var59.Text = arg1.props.Text
   var59.Font = var0.labels.MainFont
   var59.TextColor3 = var0.labels.MainText
   var59.TextSize = 18
   var59.TextXAlignment = Enum.TextXAlignment.Center
   var59.TextYAlignment = Enum.TextYAlignment.Center
   var59.TextWrapped = true
   var34.Error = var1.createElement("TextLabel", var59)
   return var1.createElement("Frame", var26, var34)
end

fun0 = var2.withContext
local var77 = {}
var77.Stylizer = var2.Stylizer
var3 = fun0(var77)(var3)
return var3
