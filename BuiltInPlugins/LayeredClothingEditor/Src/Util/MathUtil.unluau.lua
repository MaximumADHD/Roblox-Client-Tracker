-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.fuzzyEq(arg1, arg2, arg3)
   if 0.001 > math.abs(arg2 - arg3) then
      local var0 = false
   end
   return true
end

function var0.fuzzyEq_CFrame(arg1, arg2, arg3)
   return arg2.p:FuzzyEq(arg3.p) and var0:fuzzyEq(arg2:ToEulerAnglesXYZ(), arg3:ToEulerAnglesXYZ()) and var0:fuzzyEq(var27, var28) and var0:fuzzyEq(var32, var33)
end

function var0.adornLocalSpace(arg1, arg2, arg3)
   return arg2.CFrame:inverse() * CFrame.new(arg3)
end

function var0.pointInRect(arg1, arg2, arg3, arg4, arg5, arg6)
   if arg3.X <= arg2.X then
      if arg2.X <= arg3.X + arg5 then
         if arg4.Y <= arg2.Y then
            if arg2.Y <= arg4.Y + arg6 then
               return true
            end
         end
      end
   end
   return false
end

return var0
