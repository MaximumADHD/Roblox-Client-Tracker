-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Actions.SetEditingCage)
return function(arg1)
   return function(arg1)
      if arg1:getState().selectItem.editingCage ~= arg1 then
         local var0 = var0(arg1)
         arg1:dispatch()
      end
   end
end
