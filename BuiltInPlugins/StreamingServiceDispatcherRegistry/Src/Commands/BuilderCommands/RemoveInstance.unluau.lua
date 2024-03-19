-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   local var0 = arg1.requestId
   local var1 = arg1.arguments
   local var2 = var1.direct_instance
   local var3 = var2 or var2.get(var1.instanceId, var0)
   if not var3 then
   end
   assert(var3, "Luau")
   if var3.Parent then
      if not var2 then
         local var29 = var2
         var29 = var0
         var29.StartRecordingActions(var29)
      end
      var3.Parent = nil
      if not var2 then
         local var32 = var2
         var32 = var0
         var32.EndRecordingActions(var32)
      end
   end
end
