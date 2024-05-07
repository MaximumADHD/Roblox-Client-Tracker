-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.getVector2FromUDim2Scale)
local var1 = require(script.Parent.rotatePoint)
function getAbsPosFromRelative(arg1, arg2)
   if typeof(arg1) == "UDim2" then
      arg1 = var0(arg1, arg2)
   end
   if not arg2:IsA("GuiBase2d") then
      return arg1
   end
   arg1 = var1(arg1, 0.5 * arg2.AbsoluteSize, arg2.AbsoluteRotation)
   return arg1 + arg2.AbsolutePosition
end

return getAbsPosFromRelative
