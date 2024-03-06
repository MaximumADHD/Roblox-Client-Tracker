-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("TextureGenerator").Src.Util.Constants)
return function(arg1, arg2, arg3, arg4)
   local var0 = var0
   local var1 = var0.CAMERA_DISTANCE_SCALE
   local var2 = CFrame.fromEulerAnglesYXZ(arg2:ToEulerAnglesYXZ(), var1, var0) * CFrame.lookAt(Vector3.new(), var0.INITIAL_FOCUS_DIRECTION)
   local var36 = var2.LookVector
   var36 = arg3
   local var4 = CFrame.new(var36 or Vector3.new())
   local var5 = CFrame.new(var4.Position + (arg4 or arg1:GetExtentsSize().Magnitude) * var1 * var36)
   var5 = var5 * var2
   return var5var4,
end
