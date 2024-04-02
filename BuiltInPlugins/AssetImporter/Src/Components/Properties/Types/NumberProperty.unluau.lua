-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.TextInput
local var4 = var2.TextLabel
return function(arg1)
   local var0 = tostring(arg1.Value)
   if arg1.Editable == "Value" then
      if not arg1.Editable then
         local var63 = {}
         var63.LayoutOrder = arg1.LayoutOrder
         var63.Size = UDim2.new(0, 0, arg1.Size.Y.Scale, arg1.Size.Y.Offset)
         var63.AutomaticSize = Enum.AutomaticSize.X
         var63.Text = var0
         var63.TextXAlignment = Enum.TextXAlignment.Left
         return var1.createElement(var4, var63)
      end
   end
   local var81 = {}
   var81.Disabled = true
   var81.LayoutOrder = arg1.LayoutOrder
   var81.Size = arg1.Size
   var81.Text = var0
   return var1.createElement(var3, var81)
end
