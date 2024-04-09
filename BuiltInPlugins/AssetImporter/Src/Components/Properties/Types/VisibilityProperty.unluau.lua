-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("DevFrameworkToggleAllowEyeIcon")
local var1 = script:FindFirstAncestor("AssetImporter")
local var2 = require(var1.Packages.Framework)
local var3 = require(var1.Packages.Roact)
local var4 = var2.Style.Stylizer
local var5 = var2.UI.ToggleButton
return function(arg1)
   if var0 then
      local var25 = {}
      var25.OnClick = arg1.OnToggleItem
      var25.Size = arg1.Size
      var25.LayoutOrder = arg1.LayoutOrder
      var25.Selected = arg1.Value
      var25.Stylizer = var4
      var25.Style = "EyeIcon"
      return var3.createElement(var5, var25)
   end
   local var36 = {}
   var36.OnClick = arg1.OnToggleItem
   var36.Size = arg1.Size
   var36.LayoutOrder = arg1.LayoutOrder
   var36.Selected = arg1.Value
   var36.Stylizer = var4
   return var3.createElement(var5, var36)
end
