-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.TextInput
local var4 = var2.TextLabel
return function(arg1)
   local var0 = arg1.Value
   local var1 = `{var0.X}{var0.Y}{var0.Z}`
   if arg1.Editable == "Value" then
      if not arg1.Editable then
         local var61 = {}
         var61.LayoutOrder = arg1.LayoutOrder
         var61.Size = UDim2.new(0, 0, arg1.Size.Y.Scale, arg1.Size.Y.Offset)
         var61.AutomaticSize = Enum.AutomaticSize.X
         var61.Text = var1
         var61.TextXAlignment = Enum.TextXAlignment.Left
         return var1.createElement(var4, var61)
      end
   end
   local var79 = {}
   var79.Disabled = true
   var79.LayoutOrder = arg1.LayoutOrder
   var79.Size = arg1.Size
   var79.Text = var1
   return var1.createElement(var3, var79)
end
