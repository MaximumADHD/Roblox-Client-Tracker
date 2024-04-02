-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.CliAdapter).GetService("StreamingService")
local var2 = require(var0.Src.Utils.Utils)
local var3 = require(var0.Src.Types)
local var4 = require(var0.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   local var0 = arg1.requestId
   local var1 = arg1.arguments
   local var2 = var1.direct_instance
   local var3 = var2 or var4.get(var1.sourceInstanceId, var0)
   if not var3 then
   end
   assert(var3, "Luau")
   if not var2 then
      local var118 = var4
      var118 = var0
      var118.StartRecordingActions(var118)
   end
   local var4 = var3:Clone()
   if not var4 then
      if not var2 then
         local var122 = var4
         var122 = var0
         var122.EndRecordingActions(var122)
      end
   end
   if var1.newInstanceId then
      var4.set(var1.newInstanceId, var4)
   end
   var1.direct_instance = var4
   var1:ExecuteCommandAsync(var0, "SetProperty", arg1)
   local var134 = var2
   var134 = var4
   var4.Parent = var134.getRequestParent(var134, var0)
   if not var2 then
      local var138 = var4
      var138 = var0
      var138.EndRecordingActions(var138)
   end
   local var140 = var2
   var140 = var0
   var140.modifyChatWithInstanceLink(var140, var4, "copied", var1.chatGroup or var1.newInstanceId)
end
