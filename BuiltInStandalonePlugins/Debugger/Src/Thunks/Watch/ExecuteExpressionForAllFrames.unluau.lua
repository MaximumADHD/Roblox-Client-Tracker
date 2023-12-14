-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = var0.Src.Models
local var2 = require(var1.StepStateBundle)
local var3 = require(var1.DebuggerStateToken)
local var4 = require(var0.Src.Thunks.Watch.ExecuteExpressionThunk)
return function(arg1, arg2, arg3, arg4)
   return function(arg1, arg2)
      assert(arg2)
      local var0 = arg2:GetThreadById(arg4)
      assert(var0)
      local var1 = var0.FrameCount
      local var2 = 1
      local var3 = var4(arg1, var2.ctor(arg3, arg4, 1), arg2)
      arg1:dispatch()
   end
end
