-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.pointOnSideOfLine(arg1, arg2, arg3, arg4)
   return (arg4.X - arg2.X) * (arg3.Y - arg2.Y) - (arg4.Y - arg2.Y) * (arg3.X - arg2.X)
end

function var0.containsPoint(arg1, arg2, arg3)
   local var0 = arg2.Min
   local var1 = Vector2.new(var0.X + arg2.Width, var0.Y)
   local var2 = arg2.Max
   local var33 = arg2.Width
   local var4 = Vector2.new(var2.X - var33, var2.Y)
   var33 = var0
   if var0:pointOnSideOfLine(var33, var1, arg3) <= 0 then
      local var0 = false
      if var0:pointOnSideOfLine(var1, var2, arg3) <= 0 then
         local var0 = false
         if var0:pointOnSideOfLine(var2, var4, arg3) <= 0 then
            if 0 >= var0:pointOnSideOfLine(var4, var0, arg3) then
               local var0 = false
            end
            local var0 = true
         end
      end
   end
   return false
end

return var0
