-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Src.Util.TreeTableHelpers)
local var2 = require(var0.Src.Actions.Window.SelectItem)
local var3 = require(var0.Src.Reducers.RootReducer)
local var4 = require(var0.Src.Thunks.Types)
return function(arg1, arg2, arg3)
   return function()
      if arg2:sub(1, 1) == "," then
         if arg1:IsA("StyleRule") then
            arg1.Selector = arg1.Selector ... arg2
            arg1.Name = arg1.Selector
            local var0 = arg1
         else
            local var91 = Instance.new("StyleRule")
            arg3.Name = arg2
            arg3.Selector = arg2
            arg3.Parent = arg1
         end
      else
         local var100 = Instance.new("StyleRule")
         arg3.Name = arg2
         arg3.Selector = arg2
         arg3.Parent = arg1
      end
      return Enum.FinishRecordingOperation.Commit
   end
end
