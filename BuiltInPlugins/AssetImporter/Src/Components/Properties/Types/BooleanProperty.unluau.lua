-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.Checkbox
return function(arg1)
   local var281 = {}
   var281.OnClick = arg1.OnToggleItem
   var281.LayoutOrder = arg1.LayoutOrder
   var281.Checked = arg1.Value
   return var1.createElement(var2, var281)
end
