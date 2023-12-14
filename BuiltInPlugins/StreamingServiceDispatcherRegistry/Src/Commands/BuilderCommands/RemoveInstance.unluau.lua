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
         local var176 = var1
         var176 = var0
         var176.StartRecordingActions(var176)
      end
      var3.Parent = nil
      if not var2 then
         local var179 = var1
         var179 = var0
         var179.EndRecordingActions(var179)
      end
   end
end
