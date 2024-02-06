-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Renderers.SequenceRenderers.Types)
return function(arg1)
   local var20 = {}
   var20.LayoutOrder = arg1.LayoutOrder
   var20.Position = arg1.Position
   var1.Tag = "ColorSequenceLine"
   function var1.Event.MouseEnter()
      arg1.OnHoverStart()
   end
   
   return var1.createElement("Frame", var20)
end
