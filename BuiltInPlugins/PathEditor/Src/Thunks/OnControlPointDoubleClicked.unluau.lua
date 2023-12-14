-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = var0.Src.Thunks
local var2 = require(var0.Src.Thunks.AddWaypoint)
local var3 = require(var1.RemoveControlPoint)
local var4 = require(var1.SetControlPointTangent)
return function(arg1)
   return function(arg1)
      local var0 = arg1:getState().PathReducer
      if var0.Path2DToolMode == "Move" then
      end
      if var0.Path2DToolMode == "AddTangent" then
         local var25 = var2()
         arg1:dispatch()
         local var33 = var4(arg1, "Left", Vector2.zero, false, false)
         arg1:dispatch()
         local var2 = var4(arg1, "Right", Vector2.zero, false, false)
         arg1:dispatch()
      end
   end
end
