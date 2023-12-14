-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Parent.Packages.Roact)
local var1 = script.Parent
local var2 = require(var1.LabeledElementPair)
local var3 = require(var1.ToggleButtons).ToggleButton
return function(arg1)
   local var138 = {}
   var138.Size = UDim2.new(1, 0, 0, 18)
   var138.InfoMessage = arg1.InfoMessage
   var138.TeachingCallout = arg1.TeachingCallout
   var138.Text = arg1.Text
   var138.Tooltip = arg1.Tooltip
   var138.LayoutOrder = arg1.LayoutOrder
   local var145 = {}
   local var149 = {}
   var149.IsOn = arg1.IsOn
   var149.SetIsOn = arg1.SetIsOn
   var149.Disabled = arg1.Disabled
   var149.Position = UDim2.new(0, 0, 0, 3)
   var145.ToggleButton = var0.createElement(var3, var149)
   return var0.createElement(var2, var138, var145)
end
