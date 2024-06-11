-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Util.deepCopy
local var2 = var0.Src.Models
local var3 = require(var2.StepStateBundle)
local var4 = require(var2.Watch.WatchRow)
local var5 = var0.Src.Thunks
local var6 = require(var5.Watch.ExecuteExpressionThunk)
local var7 = require(var5.Callstack.LoadStackFrameVariables)
local var8 = require(var5.Common.AddChildRowsToVars)
local var9 = require(var0.Src.Actions.Callstack.SetCurrentThread)
local var10 = require(var0.Src.Actions.Watch.ExpressionsEvaluated)
local var11 = require(var0.Src.Util.WatchHelperFunctions)
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      if arg1 == "table" then
         table.insert(arg2, arg1)
         local var0 = arg1
         local var126 = arg3
         var126 = arg1
         local var1 = var126.fromInstance(var126, arg4)
         table.insert()
      end
      local var132 = var9 - 1
      if var9 == 0 then
         local var138 = var7(var11, arg1)
         var3:dispatch()
         local var1 = var4("", arg2, var11, false, var10)
         var3:dispatch()
      end
   end
end
