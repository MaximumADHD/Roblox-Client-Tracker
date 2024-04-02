-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Util.TreeTableHelpers)
local var2 = require(var0.Src.Actions.Window.SelectItem)
local var3 = require(var0.Src.Reducers.RootReducer)
local var4 = require(var0.Src.Thunks.Types)
return function(arg1, arg2)
   return function()
      local var232 = arg2:Clone()
      arg1.Parent = var1
      return Enum.FinishRecordingOperation.Commit
   end
end
