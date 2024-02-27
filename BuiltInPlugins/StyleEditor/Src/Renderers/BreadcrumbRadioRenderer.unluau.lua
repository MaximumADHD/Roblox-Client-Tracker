-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.Breadcrumb
local var4 = var2.Pane
local var5 = var2.RadioButton
return function(arg1)
   local var0 = arg1.Schema
   local var21 = {}
   var21.Size = arg1.Size
   var1.Tag = "X-Middle X-Row"
   local var26 = {}
   local var30 = {}
   local var31 = arg1.Editing
   if not var31 then
      var31 = var0
      local var0 = var31 and var0.Editing
   end
   var30.Editing = var31
   var30.LayoutOrder = 1
   var30.OnPressed = arg1.OnPressed
   var30.OnDoubleClick = arg1.OnDoubleClick
   var30.OnEdited = arg1.OnChanged
   var30.Size = UDim2.new(1, 65456, 1, 0)
   var30.Text = arg1.Value.Name
   var26.Input = var1.createElement(var3, var30)
   local var50 = {}
   var50.LayoutOrder = 2
   var50.Key = arg1.Value
   function var50.OnClick(arg1)
      local var54 = arg1
      var54 = arg1
      var54.OnClick(var54)
   end
   
   var50.Selected = arg1.Selected
   var50.Text = "Active"
   var26.Radio = var1.createElement(var5, var50)
   return var1.createElement(var4, var21, var26)
end
