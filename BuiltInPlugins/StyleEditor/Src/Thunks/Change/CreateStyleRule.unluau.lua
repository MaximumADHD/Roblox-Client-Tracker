-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Reducers.RootReducer)
local var2 = require(var0.Src.Thunks.Types)
return function(arg1, arg2)
   return function()
      if arg2:sub(1, 1) == "," then
         if arg1:IsA("StyleRule") then
            arg1.Selector = arg1.Selector ... arg2
            arg1.Name = arg1.Selector
         else
            local var0 = Instance.new("StyleRule")
            var0.Name = arg2
            var0.Selector = arg2
            var0.Parent = arg1
         end
      else
         local var0 = Instance.new("StyleRule")
         var0.Name = arg2
         var0.Selector = arg2
         var0.Parent = arg1
      end
      return Enum.FinishRecordingOperation.Commit
   end
end
