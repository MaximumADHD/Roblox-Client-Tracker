-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SetUserAddedAssets)
local var2 = require(var0.Packages.Framework).Util.deepCopy
return function(arg1, arg2)
   return function(arg1)
      local var0 = var2(arg1:getState().previewStatus.userAddedAssets)
      if var0[arg1] then
         if var0[arg1][arg2] then
            local var32 = var0[arg1]
            arg2 = nil
            local var0 = var1(var0)
            arg1:dispatch()
         end
      end
   end
end
