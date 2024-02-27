-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.TextLabel
local var4 = var2.UI.PropertyCell
local var5 = var2.UI.Pane
return function(arg1)
   local var353 = {}
   var353.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "X-RowM X-FitX X-Middle X-Stroke LabelCell"
   local var358 = {}
   local var362 = {}
   var362.LayoutOrder = 1
   var362.Text = arg1.Text
   var1.Tag = "X-Fit"
   var358.Label = var1.createElement(var3, var362)
   local var372 = {}
   var372.LayoutOrder = 2
   var372.Size = UDim2.fromOffset(100, 30)
   var372.Disabled = arg1.Disabled
   var372.Schema = arg1.Schema
   var372.Value = arg1.Value
   var372.OnChanged = arg1.OnChanged
   local var0 = {}
   var0.Color = arg1.Renderer
   var372.Renderers = var0
   var358.Cell = var1.createElement(var4, var372)
   return var1.createElement(var5, var353, var358)
end
