-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Src.Types)
local var2 = require(var0.Src.Thunks.AddControlPointTangent)
local var3 = require(var0.Src.Actions.SelectControlPoint)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState().PathReducer
      if var0.Path2DToolMode == "AddTangent" then
         local var0 = var2(arg1)
         arg1:dispatch()
      end
      var0.SelectedObject.SelectedControlPoint = arg1
      local var1 = var3(arg1)
      arg1:dispatch()
   end
end
