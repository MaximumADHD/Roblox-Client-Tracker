-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Core.Actions
local var2 = require(var1.NetworkError)
local var3 = require(var1.SetCachedCreatorInfo)
local var4 = require(var0.Core.Util.CreatorInfoHelper)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var22 = arg1
      var22 = arg1
      local var28 = {}
      var28.Id = var3
      var28.Name = var22.getNameFromResult(var22, arg2)
      var28.Type = arg2
      local var0 = var4(var28)
      arg3:dispatch()
   end
end
