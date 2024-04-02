-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Thunks.Types)
local var3 = require(var0.Src.Types)
return function(arg1, arg2, arg3)
   assert(arg1 and arg1:IsA("StyleRule"), "expecting valid StyleRule")
   return function()
      arg1:SetProperty(arg2, arg3)
      local var0 = typeof(arg3)
      if var0 == "Color3" then
         if var0 == "ColorSequence" then
            return Enum.FinishRecordingOperation.Append
         end
      end
      return Enum.FinishRecordingOperation.Append
      return Enum.FinishRecordingOperation.Commit
   end
end
