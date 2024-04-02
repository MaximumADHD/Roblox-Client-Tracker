-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.CliAdapter)
local var2 = var1.GetService("StreamingService")
local var3 = var1.GetService("ConversationalAIAcceptanceService")
local var4 = require(var0.Src.Utils.Utils)
local var5 = require(var0.Src.Types)
local var6 = require(var0.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   local var0 = arg1.arguments
   var6.StartRecordingActions(arg1.requestId)
   local var1 = Instance.new(var0.className)
   if var0.newInstanceId then
      var6.set(var0.newInstanceId, var1)
   end
   var0.direct_instance = var1
   var2:ExecuteCommandAsync(arg1.requestId, "SetProperty", arg1)
   local var48 = var4
   var48 = var1
   var1.Parent = var48.getRequestParent(var48, arg1.requestId)
   var6.EndRecordingActions(arg1.requestId)
   var3:InstanceInserted(arg1.requestId)
   var4.modifyChatWithInstanceLink(arg1.requestId, var1, "created", var0.chatGroup or var0.newInstanceId)
end
