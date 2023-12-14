-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Core.Actions
local var2 = require(var1.NetworkError)
local var3 = require(var0.Core.Types.ConfigTypes)
local var4 = require(var1.UpdateAssetConfigData)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1.responseBody
      local var1 = {}
      if var0.data then
         if 0 < var0.data then
            var1.ItemTags = var0.data[1].itemTags
         end
      end
      local var2 = arg2(var1)
      arg1:dispatch()
   end
end
