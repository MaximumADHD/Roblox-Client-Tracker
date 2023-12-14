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
         local var197 = {}
         var197.LayoutOrder = arg1.LayoutOrder
         var197.Size = arg1.Size
         var197.Text = var0
         var197.TextXAlignment = Enum.TextXAlignment.Left
         return var1.createElement(var4, var197)
      end
   end
   local var205 = {}
   var205.Disabled = true
   var205.LayoutOrder = arg1.LayoutOrder
   var205.Size = arg1.Size
   var205.Text = var0
   return var1.createElement(var3, var205)
end
