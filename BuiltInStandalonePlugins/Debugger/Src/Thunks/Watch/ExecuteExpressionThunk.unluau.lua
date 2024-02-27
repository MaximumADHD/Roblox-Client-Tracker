-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.Watch.ExpressionEvaluated)
local var2 = require(var0.Src.Actions.Watch.AddChildExpression)
local var3 = var0.Src.Models
local var4 = require(var3.StepStateBundle)
local var5 = require(var3.Watch.WatchRow)
local var6 = require(var0.Src.Util.Constants)
local var7 = require(var0.Src.Util.WatchHelperFunctions)
local var8 = require(var0.Src.Thunks.Common.AddChildRowsToVars)
return function(arg1, arg2, arg3)
   return function(arg1)
      if arg1 == "fromInstance" then
         local var90 = var7
         var90 = arg1
         local var98 = arg3(var5, var90.fromInstance(var90, arg1))
         arg2:dispatch()
         local var104 = arg1
         local var1 = var1("", {}, var5, false, var8)
         arg2:dispatch()
      end
   end
end
