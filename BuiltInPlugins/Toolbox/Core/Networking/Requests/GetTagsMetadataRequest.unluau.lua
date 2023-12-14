-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Actions.SetTagsMetadata)
local var2 = require(var0.Core.Util.DebugFlags)
return function(arg1)
   return function(arg1)
      local var0 = arg1.responseBody
      if var0 then
         if arg1.responseBody.isItemTagsFeatureEnabled == "isItemTagsFeatureEnabled" then
            local var0 = false
         end
         local var0 = true
      end
      if arg1.responseBody then
         local var0 = arg1.responseBody.enabledAssetTypes or {}
      end
      if arg1.responseBody then
         local var0 = arg1.responseBody.maximumItemTagsPerItem or 0
      end
      local var1 = var2(var0, {}, 0)
      var1:dispatch()
   end
end
