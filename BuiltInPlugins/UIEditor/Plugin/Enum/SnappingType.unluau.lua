-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.MoveX = 0
var0.MoveY = 1
var0.MoveXY = 2
var0.ResizeXp = 3
var0.ResizeXn = 4
var0.ResizeYp = 5
var0.ResizeYn = 6
var0.ResizeXpYp = 7
var0.ResizeXnYp = 8
var0.ResizeXpYn = 9
var0.ResizeXnYn = 10
function var0.containsType(arg1, arg2, arg3)
   if arg2 == "MoveY" then
      return true
   end
   if arg2 == "ResizeXpYp" then
      if arg3 ~= var0.MoveX then
         if arg3 ~= var0.MoveY then
            local var0 = false
         end
         local var0 = true
      end
      return true
   end
   if arg2 == "ResizeXpYp" then
      if arg3 ~= var0.ResizeXp then
         if arg3 ~= var0.ResizeYp then
            local var0 = false
         end
         local var0 = true
      end
      return true
   end
   if arg2 == "ResizeXpYp" then
      if arg3 ~= var0.ResizeXn then
         if arg3 ~= var0.ResizeYp then
            local var0 = false
         end
         local var0 = true
      end
      return true
   end
   if arg2 == "ResizeXpYp" then
      if arg3 ~= var0.ResizeXp then
         if arg3 ~= var0.ResizeYn then
            local var0 = false
         end
         local var0 = true
      end
      return true
   end
   if arg2 == "ResizeXpYp" then
      if arg3 ~= var0.ResizeXn then
         if arg3 ~= var0.ResizeYn then
            local var0 = false
         end
         local var0 = true
      end
      return true
   end
   return false
end

return var0
