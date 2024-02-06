-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Packages.Framework)
local var3 = var2.UI.TextLabel
local var4 = var2.UI.PropertyCell
local var5 = var2.UI.Pane
return function(arg1)
   local var316 = {}
   var316.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "X-RowM X-FitX X-Middle X-Stroke LabelCell"
   local var321 = {}
   local var325 = {}
   var325.LayoutOrder = 1
   var325.Text = arg1.Text
   var1.Tag = "X-Fit"
   var321.Label = var1.createElement(var3, var325)
   local var335 = {}
   var335.LayoutOrder = 2
   var335.Size = UDim2.fromOffset(100, 30)
   var335.Disabled = arg1.Disabled
   var335.Schema = arg1.Schema
   var335.Value = arg1.Value
   var335.OnChanged = arg1.OnChanged
   local var0 = {}
   var0.Color = arg1.Renderer
   var335.Renderers = var0
   var321.Cell = var1.createElement(var4, var335)
   return var1.createElement(var5, var316, var321)
end
