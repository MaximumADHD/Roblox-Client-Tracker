-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StreamingService")
local var1 = script.Parent.Parent.Parent.Parent
local var2 = require(var1.Src.Utils.Utils)
local var3 = require(var1.Src.Types)
local var4 = require(script.Parent.BuilderNameMap)
local var5 = game:GetFastFlag("ConvAIAddDraftModeForSceneCreate2")
return function(arg1)
   assert(var5, "runDraftCommand: FFlagConvAIAddDraftModeForSceneCreate is not enabled!")
   if not var2.isDraftModeEnabled(arg1.requestId) then
      var4.activeDraftGuids = {}
      var2.enableDraftMode(arg1.requestId)
   end
   local var0 = {}
   var0.requestId = arg1.requestId
   var0.arguments = arg1.arguments.arguments
   local var46 = arg1.arguments
   var46 = var0
   var0:ExecuteCommandAsync(arg1.requestId, var46.command, var46)
end
