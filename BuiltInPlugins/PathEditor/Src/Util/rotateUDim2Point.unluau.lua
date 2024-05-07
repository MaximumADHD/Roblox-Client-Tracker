-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.getVector2FromUDim2Scale)
local var1 = require(script.Parent.getUDim2FromVector2)
local var2 = require(script.Parent.rotatePoint)
function rotateUDim2Point(arg1, arg2, arg3, arg4)
   if arg3 == 0 then
      return arg1
   end
   return var1(var2(var0(arg1, arg4), arg2, arg3), arg4)
end

return rotateUDim2Point
