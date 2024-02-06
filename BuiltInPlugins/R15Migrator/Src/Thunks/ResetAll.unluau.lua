-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator").Src.Actions
local var1 = require(var0.ResetAllAnimationConversion)
local var2 = require(var0.ResetAllCharacterConversion)
local var3 = require(var0.ResetAllScriptConversion)
local var4 = require(var0.ResetAllAdapter)
return function()
   return function(arg1)
      local var20 = var1()
      arg1:dispatch()
      local var23 = var2()
      arg1:dispatch()
      local var26 = var3()
      arg1:dispatch()
      local var3 = var4()
      arg1:dispatch()
   end
end
