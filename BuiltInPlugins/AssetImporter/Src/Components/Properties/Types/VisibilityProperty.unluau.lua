-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("DevFrameworkToggleAllowEyeIcon")
local var1 = script.Parent.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Framework)
local var3 = require(var1.Packages.Roact)
local var4 = var2.Style.Stylizer
local var5 = var2.UI.ToggleButton
return function(arg1)
   if var0 then
      local var77 = {}
      var77.OnClick = arg1.OnToggleItem
      var77.Size = arg1.Size
      var77.LayoutOrder = arg1.LayoutOrder
      var77.Selected = arg1.Value
      var77.Stylizer = var4
      var77.Style = "EyeIcon"
      return var3.createElement(var5, var77)
   end
   local var88 = {}
   var88.OnClick = arg1.OnToggleItem
   var88.Size = arg1.Size
   var88.LayoutOrder = arg1.LayoutOrder
   var88.Selected = arg1.Value
   var88.Stylizer = var4
   return var3.createElement(var5, var88)
end
