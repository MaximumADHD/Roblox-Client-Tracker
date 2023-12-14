-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.Threshold(arg1, arg2, arg3)
   if arg3 == 0 then
      return math.clamp((arg1 - arg2) / arg3, 0, 1)
   end
   if arg1 <= arg2 then
      return 0
   end
   return 1
end

function var0.Ridge(arg1)
   if arg1 < 0.5 then
      return arg1 * 2
   end
   return 2 - arg1 * 2
end

function var0.RidgeFlipped(arg1)
   if arg1 < 0.5 then
      return 1 - arg1 * 2
   end
   return arg1 * 2 - 1
end

return var0
