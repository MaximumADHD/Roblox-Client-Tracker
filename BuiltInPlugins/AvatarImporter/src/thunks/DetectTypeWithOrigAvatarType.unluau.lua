-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.src.thunks.ImportWithoutSceneLoad)
local var2 = require(var0.src.Constants)
local var3 = require(var0.src.utils.getLinesFromStr)
local var4 = require(var0.src.actions.SetScreen)
local var5 = require(var0.src.actions.SetError)
local var6 = require(var0.src.actions.SetOriginalAvatarType)
return function(arg1)
   return function(arg1)
      if not var4 then
         if arg1 then
            local var0 = var6(arg1.SCREENS.REDIRECT_RIG)
            var2:dispatch()
         end
      end
      if var4 then
         if not arg1 then
            local var0 = var6(arg1.SCREENS.REDIRECT_RIG)
            var2:dispatch()
         end
      end
      local var0 = var1(var3)
      var2:dispatch()
   end
end
