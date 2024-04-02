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
   local var1 = var0.altDataId
   if var1 then
      local var0 = var6.altDataMap[var1] or nil
   end
   local var2 = nil
   if not var2 then
      var6.StartRecordingActions(arg1.requestId)
   end
   local var42 = var2
   if not var42 then
      local var0 = {}
      var0.request = arg1
      var0.assetId = var0.assetId
      var0.altAssets = var0.altAssets
   end
   var2 = var42
   assert(var2, "Failed to set default altData in insertAsset")
   local var4 = var2.assetId
   local var50 = var4
   var50 = var4
   local var5 = var50.loadAssetAsync(var50)
   if not var5 then
   end
   assert(var5, "Luau")
   if var0.newInstanceId then
      var6.set(var0.newInstanceId, var5)
   end
   var0.direct_instance = var5
   var2:ExecuteCommandAsync(arg1.requestId, "SetProperty", arg1)
   local var66 = var4
   var66 = var5
   var5.Parent = var66.getRequestParent(var66, arg1.requestId)
   var6.EndRecordingActions(arg1.requestId)
   var3:AssetInserted(arg1.requestId, var4)
   var4.modifyChatWithInstanceLink(arg1.requestId, var5, "added", var0.chatGroup or var0.newInstanceId, var2)
end
