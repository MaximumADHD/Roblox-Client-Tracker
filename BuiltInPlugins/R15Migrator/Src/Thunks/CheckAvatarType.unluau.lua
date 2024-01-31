-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("R15Migrator").Src.Actions.SetAvatarType)
return function(arg1)
   return function(arg1)
      local var0 = var0(arg1:getAvatarType(game))
      arg1:dispatch()
   end
end
