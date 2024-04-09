-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.CliAdapter).GetService("StreamingService")
local var2 = require(var0.Src.Utils.Utils)
local var3 = require(var0.Src.Types)
local var4 = require(var0.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   if not var2.isDraftModeEnabled(arg1.requestId) then
      var4.activeDraftGuids = {}
      var2.enableDraftMode(arg1.requestId)
   end
   local var0 = {}
   var0.requestId = arg1.requestId
   var0.arguments = arg1.arguments.arguments
   local var110 = arg1.arguments
   var110 = var0
   var1:ExecuteCommandAsync(arg1.requestId, var110.command, var110)
end
