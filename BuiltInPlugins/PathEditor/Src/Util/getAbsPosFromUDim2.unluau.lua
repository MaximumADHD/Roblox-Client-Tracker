-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.rotatePoint)
local var1 = game:GetFastFlag("PathEditorRotation")
function getAbsPosFromUDim2(arg1, arg2, arg3, arg4)
   local var13 = var1
   if var13 then
      local var27 = arg1.Y.Scale * arg3.Y
      local var0 = Vector2.new(arg1.X.Offset + arg1.X.Scale * arg3.X, arg1.Y.Offset + var27)
      var27 = var13
      var0 = var0(var0, arg3 * 0.5, var27)
      return var0 + arg2
   end
   return Vector2.new(arg1.X.Offset + arg1.X.Scale * arg3.X, arg1.Y.Offset + arg1.Y.Scale * arg3.Y) + arg2
end

return getAbsPosFromUDim2
