-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.AvatarToolsShared).Util.AccessoryAndBodyToolShared.PreviewUtil
local var2 = require(var0.Src.Actions.SetUserAddedAssets)
local var3 = require(var0.Packages.Framework).Util.deepJoin
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = arg1:getState().previewStatus.userAddedAssets
      if var0[arg1] then
         local var0 = var0[arg1] + 1
      end
      local var1 = var1.createUserAddedAsset(arg2)
      local var45 = {}
      var45[1] = var1
      arg1 = var45
      var45 = var3(var0, {})
      local var2 = var2(var45)
      arg1:dispatch()
      if arg3 then
         arg3(var1)
      end
   end
end
