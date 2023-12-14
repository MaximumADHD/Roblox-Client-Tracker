-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Actions.SelectControlPoint)
local var2 = require(var0.Src.Actions.SelectTangentSide)
return function(arg1)
   return function(arg1)
      arg1:getState().PathReducer.SelectedObject.SelectedControlPoint = arg1
      local var0 = var1(arg1)
      arg1:dispatch()
   end
end
