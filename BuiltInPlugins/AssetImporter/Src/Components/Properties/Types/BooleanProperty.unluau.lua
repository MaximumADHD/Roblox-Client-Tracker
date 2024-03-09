-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.Checkbox
return function(arg1)
   local var104 = {}
   var104.OnClick = arg1.OnToggleItem
   var104.LayoutOrder = arg1.LayoutOrder
   var104.Checked = arg1.Value
   return var1.createElement(var2, var104)
end
