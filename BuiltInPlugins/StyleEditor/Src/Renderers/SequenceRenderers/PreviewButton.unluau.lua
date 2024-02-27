-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Types)
return function(arg1)
   local var361 = {}
   var361.Text = ""
   var361.ref = arg1.ForwardRef
   var1.Event.Activated = arg1.OnClick
   var1.Tag = "SequencePreviewButton X-Corner X-Stroke"
   local var371 = {}
   local var375 = {}
   var375.Color = arg1.Color
   var375.Transparency = arg1.Transparency
   var371.Gradient = var1.createElement("UIGradient", var375)
   return var1.createElement("TextButton", var361, var371)
end
