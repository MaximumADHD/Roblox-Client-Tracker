-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Parent.Src.Types)
local var1 = require(script.Parent.BuilderNameMap)
local var2 = game:GetFastFlag("BuildCommandExpansionPT1")
return function(arg1)
   assert(var2, "Feature is not turned on - RemoveInstance command")
   local var0 = arg1.requestId
   local var1 = arg1.arguments
   local var2 = var1.direct_instance
   local var3 = var2 or var1.get(var1.instanceId, var0)
   if not var3 then
   end
   if var3.Parent then
      if not var2 then
         local var184 = var1
         var184 = var0
         var184.StartRecordingActions(var184)
      end
      var3.Parent = nil
      if not var2 then
         local var187 = var1
         var187 = var0
         var187.EndRecordingActions(var187)
      end
   end
end
