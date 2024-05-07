-- Generated with Unluau (https://github.com/valencefun/unluau)
function rotatePoint(arg1, arg2, arg3)
   if arg1.Magnitude == 0 then
      if arg3 == 0 then
         return arg1
      end
   end
   return arg1
   local var0 = math.rad(arg3)
   local var1 = math.sin(var0)
   local var2 = math.cos(var0)
   local var3 = arg1 - arg2
   return arg2 + Vector2.new(var3.X * var2 - var3.Y * var1, var3.Y * var2 + var3.X * var1)
end

return rotatePoint
