-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = game:GetService("RobloxPluginGuiService")
local var2 = require(var0.Core.Util.DebugFlags)
local var3 = require(var0.Core.Util.AssetConfigConstants)
local var4 = var0.Core.Actions
local var5 = require(var4.NetworkError)
local var6 = require(var4.SetCurrentScreen)
local var7 = require(var4.UploadResult)
local var8 = require(var4.SetAssetId)
local var9 = require(var0.Core.Util.SerializeInstances)
local var10 = require(var0.Core.Util.SharedFlags.getFFlagToolboxDeleteOnPublishAnimation)
local function var11(arg1, arg2)
   local var0 = var1:FindFirstChild("AnimationClipEditor")
   local var1 = var0 and var0:FindFirstChild("animationUploadSuccess")
   if var1 then
      if var10() then
         var1:Fire(arg1, arg2)
      end
      var1:Fire(arg1)
   end
end

return function(arg1, arg2, arg3)
   return function(arg1, arg2)
      local var0 = var1:FindFirstChild("AnimationClipEditor")
      local var1 = var0 and var0:FindFirstChild("animationUploadSuccess")
      if var1 then
         if var10() then
            var1:Fire(arg1, arg2)
         end
         var1:Fire(arg1)
      end
   end
end
