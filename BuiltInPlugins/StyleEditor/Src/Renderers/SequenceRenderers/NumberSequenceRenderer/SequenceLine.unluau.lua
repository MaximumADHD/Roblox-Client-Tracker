-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Renderers.SequenceRenderers.Types)
return function(arg1)
   local var0 = arg1.PlotAbsoluteSize
   local var1 = var0 * Vector2.new(arg1.StartKeypoint.Time, 1 - arg1.StartKeypoint.Value)
   local var2 = var0 * Vector2.new(arg1.EndKeypoint.Time, 1 - arg1.EndKeypoint.Value)
   local var3 = (var1 + var2) / 2
   local var4 = var2 - var1
   local var107 = {}
   var107.AnchorPoint = Vector2.new(0.5, 0.5)
   var107.Position = UDim2.fromOffset(var3.X, var3.Y)
   var107.Rotation = math.deg(math.atan2(var4.Y, var4.X))
   var107.Size = UDim2.fromOffset(var4.Magnitude, 2)
   var107.LayoutOrder = arg1.LayoutOrder
   var1.Tag = "NumberSequenceLine"
   return var1.createElement("Frame", var107)
end
