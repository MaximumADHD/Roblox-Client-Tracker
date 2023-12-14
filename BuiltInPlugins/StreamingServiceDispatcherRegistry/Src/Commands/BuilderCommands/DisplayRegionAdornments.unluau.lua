-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Utils.Utils)
local var2 = require(var0.Src.Types)
local var3 = require(var0.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   local var0 = arg1.requestId
   local var22 = var1
   var22 = var0
   local var25 = var3
   var25 = var0
   local var2 = var25.GetRequestMetadata(var25, "PlacementSize")
   local var29 = var1
   var29 = var0
   var29.addConstraintVisualization(var29, var22.getRequestCFrame(var22), Vector3.new(var2.X, 0, var2.Z), true)
   local var38 = var1
   var38 = var0
   var38.startConstraintVisualization(var38, true)
end
