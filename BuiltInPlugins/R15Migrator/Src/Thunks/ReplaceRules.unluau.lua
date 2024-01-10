-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("R15Migrator")
local var1 = require(var0.Src.Util.SaveInterface)
local var2 = require(var0.Src.Actions.SetReplaceRules)
return function(arg1)
   return function(arg1)
      var1.addScriptConversionRules(arg1)
      local var0 = var2(arg1)
      arg1:dispatch()
   end
end
