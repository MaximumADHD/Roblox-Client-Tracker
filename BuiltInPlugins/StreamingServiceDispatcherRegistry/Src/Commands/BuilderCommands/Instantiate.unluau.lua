-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StreamingService")
local var1 = game:GetService("ConversationalAIAcceptanceService")
local var2 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var3 = require(var2.Src.Utils.Utils)
local var4 = require(var2.Src.Types)
local var5 = require(var2.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   local var0 = arg1.arguments
   var5.StartRecordingActions(arg1.requestId)
   local var1 = Instance.new(var0.className)
   if var0.newInstanceId then
      var5.set(var0.newInstanceId, var1)
   end
   var0.direct_instance = var1
   var0:ExecuteCommandAsync(arg1.requestId, "SetProperty", arg1)
   local var45 = var3
   var45 = var1
   var1.Parent = var45.getRequestParent(var45, arg1.requestId)
   var5.EndRecordingActions(arg1.requestId)
   var1:InstanceInserted(arg1.requestId)
   var3.modifyChatWithInstanceLink(arg1.requestId, var1, "created", var0.chatGroup or var0.newInstanceId)
end
