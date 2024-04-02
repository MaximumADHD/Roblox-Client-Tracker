-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("DevFrameworkToggleAllowEyeIcon")
local var1 = script.Parent.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Framework)
local var3 = require(var1.Packages.Roact)
local var4 = var2.Style.Stylizer
local var5 = var2.UI.ToggleButton
return function(arg1)
   if var0 then
      local var27 = {}
      var27.OnClick = arg1.OnToggleItem
      var27.Size = arg1.Size
      var27.LayoutOrder = arg1.LayoutOrder
      var27.Selected = arg1.Value
      var27.Stylizer = var4
      var27.Style = "EyeIcon"
      return var3.createElement(var5, var27)
   end
   local var38 = {}
   var38.OnClick = arg1.OnToggleItem
   var38.Size = arg1.Size
   var38.LayoutOrder = arg1.LayoutOrder
   var38.Selected = arg1.Value
   var38.Stylizer = var4
   return var3.createElement(var5, var38)
end
