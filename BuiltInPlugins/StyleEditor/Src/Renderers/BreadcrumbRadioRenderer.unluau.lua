-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI
local var4 = var3.Breadcrumb
local var5 = var3.Pane
local var6 = var3.RadioButton
local var7 = var2.Styling.joinTags
return function(arg1)
   local var0 = arg1.Schema
   var1.Tag = var7(arg1[var1.Tag], "X-Middle X-Row")
   local var148 = {}
   local var152 = {}
   local var153 = arg1.Editing
   if not var153 then
      var153 = var0
      local var0 = var153 and var0.Editing
   end
   var152.Editing = var153
   var152.LayoutOrder = 1
   var152.OnPressed = arg1.OnPressed
   var152.OnDoubleClick = arg1.OnDoubleClick
   var152.OnEdited = arg1.OnChanged
   var152.Text = arg1.Value.Name
   var1.Tag = "BreadcrumbRadioSize"
   var148.Label = var1.createElement(var4, var152)
   local var169 = {}
   var169.LayoutOrder = 2
   var169.Key = arg1.Value:GetDebugId()
   function var169.OnClick(arg1)
      arg1.OnClick(arg1.Value)
   end
   
   var169.Selected = arg1.Selected
   var169.Text = "Active"
   var148.Radio = var1.createElement(var6, var169)
   return var1.createElement(var5, {}, var148)
end
