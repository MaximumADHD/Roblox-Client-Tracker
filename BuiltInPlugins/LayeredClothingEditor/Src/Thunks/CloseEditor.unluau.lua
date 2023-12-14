-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Thunks.ReleaseEditor)
local var2 = require(var0.Src.Util.AnalyticsGlobals)
return function(arg1, arg2, arg3)
   return function(arg1)
      arg1:Deactivate()
      local var21 = var1()
      arg1:dispatch()
      arg3:cleanup()
      arg2:getHandler("ExitScreen")()
      arg2:getHandler("SessionEnded")(true)
   end
end
