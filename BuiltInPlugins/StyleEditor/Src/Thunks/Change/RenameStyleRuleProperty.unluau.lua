-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Util.SelectorHelpers)
local var2 = require(var0.Src.Util.StyleSchema)
local var3 = require(var0.Src.Reducers.RootReducer)
local var4 = require(var0.Src.Thunks.Types)
return function(arg1, arg2, arg3)
   assert(arg1 and arg1:IsA("StyleRule"), "expecting valid StyleRule")
   return function()
      arg2:SetProperty(arg3, nil)
      arg2:SetProperty(var1, arg1)
      return Enum.FinishRecordingOperation.Commit
   end
end
