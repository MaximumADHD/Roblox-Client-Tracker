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
         local var59 = {}
         var59.LayoutOrder = arg1.LayoutOrder
         var59.Size = UDim2.new(0, 0, arg1.Size.Y.Scale, arg1.Size.Y.Offset)
         var59.AutomaticSize = Enum.AutomaticSize.X
         var59.Text = var0
         var59.TextXAlignment = Enum.TextXAlignment.Left
         return var1.createElement(var4, var59)
      end
   end
   local var77 = {}
   var77.Disabled = true
   var77.LayoutOrder = arg1.LayoutOrder
   var77.Size = arg1.Size
   var77.Text = var0
   return var1.createElement(var3, var77)
end
