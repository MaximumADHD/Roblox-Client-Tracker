-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework).UI
local var3 = var2.Breadcrumb
local var4 = var2.Pane
local var5 = var2.RadioButton
local var6 = require(var0.Src.Renderers.RendererTypes)
return function(arg1)
   local var0 = arg1.Schema
   local var26 = {}
   var26.Size = arg1.Size
   var1.Tag = "X-Middle X-Row"
   local var31 = {}
   local var35 = {}
   local var36 = arg1.Editing
   if not var36 then
      var36 = var0
      local var0 = var36 and var0.Editing
   end
   var35.Editing = var36
   var35.LayoutOrder = 1
   var35.OnPressed = arg1.OnPressed
   var35.OnDoubleClick = arg1.OnDoubleClick
   var35.OnEdited = arg1.OnChanged
   var35.Size = UDim2.new(1, 65456, 1, 0)
   var35.Text = arg1.Value.Name
   var31.Input = var1.createElement(var3, var35)
   local var55 = {}
   var55.LayoutOrder = 2
   var55.Key = arg1.Value
   function var55.OnClick(arg1)
      local var59 = arg1
      var59 = arg1
      var59.OnClick(var59)
   end
   
   var55.Selected = arg1.Selected
   var55.Text = "Active"
   var31.Radio = var1.createElement(var5, var55)
   return var1.createElement(var4, var26, var31)
end
