-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("DevFrameworkToggleAllowEyeIcon")
local var1 = script.Parent.Parent.Parent.Parent.Parent
local var2 = require(var1.Packages.Framework)
local var3 = require(var1.Packages.Roact)
local var4 = var2.Style.Stylizer
local var5 = var2.UI.ToggleButton
return function(arg1)
   if var0 then
      local var109 = {}
      var109.OnClick = arg1.OnToggleItem
      var109.Size = arg1.Size
      var109.LayoutOrder = arg1.LayoutOrder
      var109.Selected = arg1.Value
      var109.Stylizer = var4
      var109.Style = "EyeIcon"
      return var3.createElement(var5, var109)
   end
   local var120 = {}
   var120.OnClick = arg1.OnToggleItem
   var120.Size = arg1.Size
   var120.LayoutOrder = arg1.LayoutOrder
   var120.Selected = arg1.Value
   var120.Stylizer = var4
   return var3.createElement(var5, var120)
end
