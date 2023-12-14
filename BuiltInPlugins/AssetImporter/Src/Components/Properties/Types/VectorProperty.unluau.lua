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
         local var30 = {}
         var30.LayoutOrder = arg1.LayoutOrder
         var30.Size = arg1.Size
         var30.Text = var1
         var30.TextXAlignment = Enum.TextXAlignment.Left
         return var1.createElement(var4, var30)
      end
   end
   local var38 = {}
   var38.Disabled = true
   var38.LayoutOrder = arg1.LayoutOrder
   var38.Size = arg1.Size
   var38.Text = var1
   return var1.createElement(var3, var38)
end
