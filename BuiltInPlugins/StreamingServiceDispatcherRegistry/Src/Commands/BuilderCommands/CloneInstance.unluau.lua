-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StreamingService")
local var1 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var2 = require(var1.Src.Utils.Utils)
local var3 = require(var1.Src.Types)
local var4 = require(var1.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   local var0 = arg1.requestId
   local var1 = arg1.arguments
   local var2 = var1.direct_instance
   local var3 = var2 or var4.get(var1.sourceInstanceId, var0)
   if not var3 then
   end
   assert(var3, "Luau")
   if not var2 then
      local var112 = var4
      var112 = var0
      var112.StartRecordingActions(var112)
   end
   local var4 = var3:Clone()
   if not var4 then
      if not var2 then
         local var116 = var4
         var116 = var0
         var116.EndRecordingActions(var116)
      end
   end
   if var1.newInstanceId then
      var4.set(var1.newInstanceId, var4)
   end
   var1.direct_instance = var4
   var0:ExecuteCommandAsync(var0, "SetProperty", arg1)
   local var128 = var2
   var128 = var4
   var4.Parent = var128.getRequestParent(var128, var0)
   if not var2 then
      local var132 = var4
      var132 = var0
      var132.EndRecordingActions(var132)
   end
   local var134 = var2
   var134 = var0
   var134.modifyChatWithInstanceLink(var134, var4, "copied", var1.chatGroup or var1.newInstanceId)
end
