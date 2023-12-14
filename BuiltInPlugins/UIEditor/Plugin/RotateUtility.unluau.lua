-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.rotateVector(arg1, arg2, arg3)
   local var0 = math.rad(arg2)
   local var1 = math.cos(var0)
   local var2 = math.sin(var0)
   return Vector2.new(arg3.X * var1 - arg3.Y * var2, arg3.Y * var1 + arg3.X * var2)
end

return var0
