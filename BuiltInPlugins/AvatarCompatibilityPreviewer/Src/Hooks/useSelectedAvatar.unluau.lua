-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Src.Util.isAvatar)
local var2 = require(var0.Src.Hooks.useTransformedSelectedInstance)
local var3 = require(var0.Src.Types)
return function()
   return var2(function(arg1)
      if not var1(arg1) then
         return nil
      end
      local var0 = {}
      var0.WorldModel = arg1
      return var0
   end)
end
