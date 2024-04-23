-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.TextInput
local var4 = var2.TextLabel
return function(arg1)
   local var0 = tostring(arg1.Value)
   if arg1.Editable == "Value" then
      if not arg1.Editable then
         local var24 = {}
         var24.LayoutOrder = arg1.LayoutOrder
         var24.Size = UDim2.new(0, 0, arg1.Size.Y.Scale, arg1.Size.Y.Offset)
         var24.AutomaticSize = Enum.AutomaticSize.X
         var24.Text = var0
         var24.TextXAlignment = Enum.TextXAlignment.Left
         return var1.createElement(var4, var24)
      end
   end
   local var42 = {}
   var42.Disabled = true
   var42.LayoutOrder = arg1.LayoutOrder
   var42.Size = arg1.Size
   var42.Text = var0
   return var1.createElement(var3, var42)
end
