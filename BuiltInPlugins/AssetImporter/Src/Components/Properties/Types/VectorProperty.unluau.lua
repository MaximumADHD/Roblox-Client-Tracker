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
         local var56 = {}
         var56.LayoutOrder = arg1.LayoutOrder
         var56.Size = UDim2.new(0, 0, arg1.Size.Y.Scale, arg1.Size.Y.Offset)
         var56.AutomaticSize = Enum.AutomaticSize.X
         var56.Text = var1
         var56.TextXAlignment = Enum.TextXAlignment.Left
         return var1.createElement(var4, var56)
      end
   end
   local var74 = {}
   var74.Disabled = true
   var74.LayoutOrder = arg1.LayoutOrder
   var74.Size = arg1.Size
   var74.Text = var1
   return var1.createElement(var3, var74)
end
