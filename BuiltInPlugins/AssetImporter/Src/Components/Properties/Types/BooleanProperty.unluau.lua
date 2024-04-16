-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).UI.Checkbox
return function(arg1)
   local var276 = {}
   var276.OnClick = arg1.OnToggleItem
   var276.LayoutOrder = arg1.LayoutOrder
   var276.Checked = arg1.Value
   return var1.createElement(var2, var276)
end
