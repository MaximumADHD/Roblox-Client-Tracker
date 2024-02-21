-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.isControl(arg1)
   if arg1 ~= Enum.KeyCode.LeftControl then
      local var0 = true
      if arg1 ~= Enum.KeyCode.RightControl then
         local var0 = true
         if arg1 ~= Enum.KeyCode.RightSuper then
            if arg1 ~= Enum.KeyCode.LeftSuper then
               local var0 = false
            end
            local var0 = true
         end
      end
   end
   return true
end

function var0.isShift(arg1)
   if arg1 ~= Enum.KeyCode.LeftShift then
      if arg1 ~= Enum.KeyCode.RightShift then
         local var0 = false
      end
      local var0 = true
   end
   return true
end

function var0.isDeleteKey(arg1)
   if arg1 ~= Enum.KeyCode.Backspace then
      if arg1 ~= Enum.KeyCode.Delete then
         local var0 = false
      end
      local var0 = true
   end
   return true
end

function var0.isMultiSelectKey(arg1)
   local var48 = var0
   var48 = arg1
   local var0 = var48.isShift(var48)
   if not var0 then
      local var51 = var0
      var51 = arg1
      local var0 = var51.isControl(var51)
   end
   return var0
end

function var0.isPlayPauseKey(arg1)
   if arg1 ~= Enum.KeyCode.Space then
      local var0 = false
   end
   return true
end

function var0.isManipulatorToggleKey(arg1)
   if arg1 ~= Enum.KeyCode.R then
      local var0 = false
   end
   return true
end

function var0.isWorldSpaceToggleKey(arg1)
   if arg1 ~= Enum.KeyCode.L then
      local var0 = false
   end
   return true
end

function var0.isUp(arg1)
   if arg1 ~= Enum.KeyCode.Up then
      local var0 = false
   end
   return true
end

function var0.isDown(arg1)
   if arg1 ~= Enum.KeyCode.Down then
      local var0 = false
   end
   return true
end

function var0.isLeft(arg1)
   if arg1 ~= Enum.KeyCode.Left then
      local var0 = false
   end
   return true
end

function var0.isRight(arg1)
   if arg1 ~= Enum.KeyCode.Right then
      local var0 = false
   end
   return true
end

function var0.isLeftBracket(arg1)
   if arg1 ~= Enum.KeyCode.LeftBracket then
      local var0 = false
   end
   return true
end

function var0.isRightBracket(arg1)
   if arg1 ~= Enum.KeyCode.RightBracket then
      local var0 = false
   end
   return true
end

return var0
