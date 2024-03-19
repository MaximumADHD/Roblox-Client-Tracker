-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StreamingService")
local var1 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var2 = require(var1.Src.Utils.Utils)
local var3 = require(var1.Src.Types)
local var4 = require(var1.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   if not var2.isDraftModeEnabled(arg1.requestId) then
      var4.activeDraftGuids = {}
      var2.enableDraftMode(arg1.requestId)
   end
   local var0 = {}
   var0.requestId = arg1.requestId
   var0.arguments = arg1.arguments.arguments
   local var90 = arg1.arguments
   var90 = var0
   var0:ExecuteCommandAsync(arg1.requestId, var90.command, var90)
end
