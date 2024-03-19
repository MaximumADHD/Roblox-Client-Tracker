-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StreamingService")
local var1 = game:GetService("ConversationalAIAcceptanceService")
local var2 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var3 = require(var2.Src.Utils.Utils)
local var4 = require(var2.Src.Types)
local var5 = require(var2.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   local var0 = arg1.arguments
   local var1 = var0.altDataId
   if var1 then
      local var0 = var5.altDataMap[var1] or nil
   end
   local var2 = nil
   if not var2 then
      var5.StartRecordingActions(arg1.requestId)
   end
   local var39 = var2
   if not var39 then
      local var0 = {}
      var0.request = arg1
      var0.assetId = var0.assetId
      var0.altAssets = var0.altAssets
   end
   var2 = var39
   assert(var2, "Failed to set default altData in insertAsset")
   local var4 = var2.assetId
   local var47 = var3
   var47 = var4
   local var5 = var47.loadAssetAsync(var47)
   if not var5 then
   end
   assert(var5, "Luau")
   if var0.newInstanceId then
      var5.set(var0.newInstanceId, var5)
   end
   var0.direct_instance = var5
   var0:ExecuteCommandAsync(arg1.requestId, "SetProperty", arg1)
   local var63 = var3
   var63 = var5
   var5.Parent = var63.getRequestParent(var63, arg1.requestId)
   var5.EndRecordingActions(arg1.requestId)
   var1:AssetInserted(arg1.requestId, var4)
   var3.modifyChatWithInstanceLink(arg1.requestId, var5, "added", var0.chatGroup or var0.newInstanceId, var2)
end
