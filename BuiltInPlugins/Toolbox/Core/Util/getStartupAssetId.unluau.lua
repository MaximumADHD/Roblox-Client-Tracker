-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("StudioService")
local var1 = require(script.Parent.isCli)
return function()
   if var1() then
      return ""
   end
   return var0:getStartupAssetId()
end
