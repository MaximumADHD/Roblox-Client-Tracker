-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AssetImporter").Src.Actions
local var1 = require(var0.ResetState)
local var2 = require(var0.SetShowPreview)
return function()
   return function(arg1)
      local var122 = var2(false)
      arg1:dispatch()
      local var1 = var1()
      arg1:dispatch()
   end
end
