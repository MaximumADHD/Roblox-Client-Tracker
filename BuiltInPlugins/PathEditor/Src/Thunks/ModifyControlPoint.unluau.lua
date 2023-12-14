-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1:getState().PathReducer
      if 0 >= arg1 then
         if var0.ControlPoints < arg1 then
            return var0
         end
      end
      return var0
      local var1 = var0.ControlPoints
      var1[arg1].Position = arg2
      var0.SelectedObject:SetControlPoints(var1)
   end
end
