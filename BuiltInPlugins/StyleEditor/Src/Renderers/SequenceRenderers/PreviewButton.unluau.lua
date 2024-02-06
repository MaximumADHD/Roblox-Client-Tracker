-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Types)
return function(arg1)
   local var221 = {}
   var221.Text = ""
   var221.ref = arg1.ForwardRef
   var1.Event.Activated = arg1.OnClick
   var1.Tag = "SequencePreviewButton X-Corner X-Stroke"
   local var231 = {}
   local var235 = {}
   var235.Color = arg1.Color
   var235.Transparency = arg1.Transparency
   var231.Gradient = var1.createElement("UIGradient", var235)
   return var1.createElement("TextButton", var221, var231)
end
