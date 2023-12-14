-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.isShift(arg1, arg2)
   if arg2 ~= Enum.KeyCode.LeftShift then
      if arg2 ~= Enum.KeyCode.RightShift then
         local var0 = false
      end
      local var0 = true
   end
   return true
end

function var0.isControl(arg1, arg2)
   if arg2 ~= Enum.KeyCode.LeftControl then
      local var0 = true
      if arg2 ~= Enum.KeyCode.RightControl then
         local var0 = true
         if arg2 ~= Enum.KeyCode.RightSuper then
            if arg2 ~= Enum.KeyCode.LeftSuper then
               local var0 = false
            end
            local var0 = true
         end
      end
   end
   return true
end

function var0.isLetterA(arg1, arg2)
   if arg2 ~= Enum.KeyCode.A then
      local var0 = false
   end
   return true
end

return var0
