-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("R15Migrator").Src.Actions.SetScriptAnalyticsSent)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = arg1:getState()
      if not var0.ScriptConversion.analyticsSent then
         arg3:getHandler("onInitialScriptAnalysisScan")(arg2, arg1, var0.ScriptConversion.completedScripts)
         local var0 = var0(true)
         arg1:dispatch()
      end
   end
end
