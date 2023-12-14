-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
function var0.isInvalidCameraType()
   local var0 = game.Workspace.CurrentCamera.CameraType
   if var0 ~= Enum.CameraType.Attach then
      if var0 == game then
         return true
      end
   end
   return true
   return false
end

function var0.getRayPlaneHit(arg1, arg2, arg3, arg4)
   local var0 = arg2 - arg1
   local var1 = (arg4 - arg3:Dot(arg1)) / arg3:Dot(var0)
   if 0 <= var1 then
      if var1 <= 1 then
         local var0 = arg1 + var1 * (var0)
      end
   end
   return arg2
end

return var0
