-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.Utils)
local var2 = require(var0.Src.Types)
local var3 = require(var0.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   local var0 = arg1.requestId
   local var21 = var1
   var21 = var0
   local var24 = var3
   var24 = var0
   local var2 = var24.GetRequestMetadata(var24, "PlacementSize")
   local var28 = var1
   var28 = var0
   var28.addConstraintVisualization(var28, var21.getRequestCFrame(var21), Vector3.new(var2.X, 0, var2.Z), true)
   local var37 = var1
   var37 = var0
   var37.startConstraintVisualization(var37, true)
end
