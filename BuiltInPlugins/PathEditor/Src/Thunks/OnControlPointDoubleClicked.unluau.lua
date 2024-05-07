-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Src.Thunks
local var1 = require(var0.SetControlPointTangent)
local var2 = require(var0.RecordChangeHistory)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState().PathReducer
      if var0.Path2DToolMode == "Move" then
      end
      if var0.Path2DToolMode == "AddTangent" then
         local var21 = var2("Removed Tangents")
         arg1:dispatch()
         local var29 = var1(arg1, "Left", Vector2.zero, false, false)
         arg1:dispatch()
         local var37 = var1(arg1, "Right", Vector2.zero, false, false)
         arg1:dispatch()
         local var3 = var2()
         arg1:dispatch()
      end
   end
end
