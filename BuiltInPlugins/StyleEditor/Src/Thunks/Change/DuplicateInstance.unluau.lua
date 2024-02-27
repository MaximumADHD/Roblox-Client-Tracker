-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Thunks.Types)
return function(arg1, arg2)
   return function()
      arg1:Clone().Parent = arg2
      return Enum.FinishRecordingOperation.Commit
   end
end
