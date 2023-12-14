-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Core.Actions
local var1 = require(var0.SetAssetConfigThumbnailStatus)
local var2 = require(var0.NetworkError)
return function(arg1, arg2)
   return function(arg1)
      local var0 = var1(arg1)
      var2:dispatch()
   end
end
