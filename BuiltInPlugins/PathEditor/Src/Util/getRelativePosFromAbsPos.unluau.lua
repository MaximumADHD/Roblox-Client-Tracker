-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.getUDim2ScaleFromVector2)
local var1 = require(script.Parent.getVector2FromUDim2Scale)
local var2 = require(script.Parent.rotatePoint)
function getRelativePosFromAbsPos(arg1, arg2)
   if not arg2:IsA("GuiBase2d") then
      if typeof(arg1) == "Vector2" then
         arg1 = var0(arg1, arg2)
      end
      return arg1
   end
   if typeof(arg1) == "UDim2" then
      arg1 = var1(arg1, arg2)
   end
   local var0 = arg1 - arg2.AbsolutePosition
   var0 = var2(var0, 0.5 * arg2.AbsoluteSize, 65535 * arg2.AbsoluteRotation)
   return var0(var0, arg2)
end

return getRelativePosFromAbsPos
