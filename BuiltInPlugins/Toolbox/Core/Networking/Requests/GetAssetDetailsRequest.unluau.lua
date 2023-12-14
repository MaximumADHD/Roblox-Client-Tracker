-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Core.Actions
local var2 = require(var1.SetAssetConfigData)
local var3 = require(var0.Core.Util.firstToUpper)
local var4 = require(var0.Core.Actions.NetworkError)
local var5 = require(var1.UpdateAssetConfigData)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = arg2(arg1)
      var4:dispatch()
   end
end
