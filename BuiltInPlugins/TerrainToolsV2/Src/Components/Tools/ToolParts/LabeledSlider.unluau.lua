-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Cryo)
local var3 = script.Parent
local var4 = require(var3.LabeledElementPair)
local var5 = require(var3.Slider)
return function(arg1)
   local var238 = var2.Dictionary
   var238 = arg1
   local var240 = {}
   var1.Children = var2.None
   var240.LayoutOrder = var2.None
   var240.Text = var2.None
   local var258 = {}
   var258.Slider = var1.createElement(var5, var238.join(var238, var240))
   local var268 = {}
   local var274 = UDim2.new(1, 0, 0, 15)
   var268.Size = var274
   var268.Text = arg1.Text
   var268.LayoutOrder = arg1.LayoutOrder
   var268.Tooltip = arg1.Tooltip
   var274 = var2.Dictionary.join(arg1[var1.Children] or {}, var258)
   return var1.createElement(var4, var268, var274)
end
