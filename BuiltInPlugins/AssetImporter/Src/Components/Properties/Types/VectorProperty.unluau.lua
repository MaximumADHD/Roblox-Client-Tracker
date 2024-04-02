-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.TextInput
local var4 = var2.TextLabel
return function(arg1)
   local var0 = arg1.Value
   local var1 = `{var0.X}{var0.Y}{var0.Z}`
   if arg1.Editable == "Value" then
      if not arg1.Editable then
         local var60 = {}
         var60.LayoutOrder = arg1.LayoutOrder
         var60.Size = UDim2.new(0, 0, arg1.Size.Y.Scale, arg1.Size.Y.Offset)
         var60.AutomaticSize = Enum.AutomaticSize.X
         var60.Text = var1
         var60.TextXAlignment = Enum.TextXAlignment.Left
         return var1.createElement(var4, var60)
      end
   end
   local var78 = {}
   var78.Disabled = true
   var78.LayoutOrder = arg1.LayoutOrder
   var78.Size = arg1.Size
   var78.Text = var1
   return var1.createElement(var3, var78)
end
