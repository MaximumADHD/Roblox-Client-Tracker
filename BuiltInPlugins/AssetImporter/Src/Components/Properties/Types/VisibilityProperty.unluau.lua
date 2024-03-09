-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("DevFrameworkToggleAllowEyeIcon")
local var1 = script.Parent.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Framework)
local var3 = require(var1.Packages.Roact)
local var4 = var2.Style.Stylizer
local var5 = var2.UI.ToggleButton
return function(arg1)
   if var0 then
      local var68 = {}
      var68.OnClick = arg1.OnToggleItem
      var68.Size = arg1.Size
      var68.LayoutOrder = arg1.LayoutOrder
      var68.Selected = arg1.Value
      var68.Stylizer = var4
      var68.Style = "EyeIcon"
      return var3.createElement(var5, var68)
   end
   local var79 = {}
   var79.OnClick = arg1.OnToggleItem
   var79.Size = arg1.Size
   var79.LayoutOrder = arg1.LayoutOrder
   var79.Selected = arg1.Value
   var79.Stylizer = var4
   return var3.createElement(var5, var79)
end
