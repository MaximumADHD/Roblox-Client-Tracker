-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter")
local var1 = var0.Src.Actions
local var2 = require(var1.ResetState)
local var3 = require(var1.SetShowPreview)
local var4 = require(var0.Src.Thunks.UpdateSessionInfo)
return function()
   return function(arg1)
      local var52 = var4(arg1:getState().Preview.activeQueueItem)
      arg1:dispatch()
      local var56 = var3(false)
      arg1:dispatch()
      local var2 = var2()
      arg1:dispatch()
   end
end
