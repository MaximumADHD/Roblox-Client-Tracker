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
      local var144 = var4
      var144 = var0
      var144.StartRecordingActions(var144)
   end
   local var4 = var3:Clone()
   if not var4 then
      if not var2 then
         local var148 = var4
         var148 = var0
         var148.EndRecordingActions(var148)
      end
   end
   if var1.newInstanceId then
      var4.set(var1.newInstanceId, var4)
   end
   var1.direct_instance = var4
   var1:ExecuteCommandAsync(var0, "SetProperty", arg1)
   local var160 = var2
   var160 = var4
   var4.Parent = var160.getRequestParent(var160, var0)
   if not var2 then
      local var164 = var4
      var164 = var0
      var164.EndRecordingActions(var164)
   end
   local var166 = var2
   var166 = var0
   var166.modifyChatWithInstanceLink(var166, var4, "copied", var1.chatGroup or var1.newInstanceId)
end
