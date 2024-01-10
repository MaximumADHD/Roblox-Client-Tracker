-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Utility)
local var1 = {}
function var1.convertAbsoluteSizeToScaleOrOffset(arg1, arg2, arg3, arg4, arg5)
   local var0 = arg4
   local var1 = arg5:FindFirstChildWhichIsA("UIPadding")
   local var2 = Vector2.zero
   local var3 = Vector2.zero
   if var1 then
      var2 = var0:multUDimWithVector(UDim2.new(var1.PaddingLeft, var1.PaddingTop), arg5.AbsoluteSize)
      var3 = var0:multUDimWithVector(UDim2.new(var1.PaddingRight, var1.PaddingBottom), arg5.AbsoluteSize)
   end
   local var4 = arg5.AbsoluteSize - var2 - var3
   if var4.X == 0 then
      local var0 = var4.X
   end
   if var4.Y == 0 then
      local var0 = var4.Y
   end
   var4 = Vector2.new(1, 1)
   if arg2 then
      local var0 = (arg3 - Vector2.new(arg4.X.Offset, arg4.Y.Offset)) / (var4)
      var0 = UDim2.new(var0.X, arg4.X.Offset, var0.Y, arg4.Y.Offset)
      return var0
   end
   local var5 = arg3 - Vector2.new(arg4.X.Scale, arg4.Y.Scale) * arg5.AbsoluteSize
   var0 = UDim2.new(arg4.X.Scale, var5.X, arg4.Y.Scale, var5.Y)
   return var0
end

function var1.convertAbsolutePositionToScaleOrOffset(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
   local var0 = arg5
   local var1 = arg6:FindFirstChildWhichIsA("UIPadding")
   local var2 = Vector2.zero
   local var3 = Vector2.zero
   if var1 then
      var2 = var0:multUDimWithVector(UDim2.new(var1.PaddingLeft, var1.PaddingTop), arg6.AbsoluteSize)
      var3 = var0:multUDimWithVector(UDim2.new(var1.PaddingRight, var1.PaddingBottom), arg6.AbsoluteSize)
   end
   local var4 = arg4 / 2
   local var5 = arg6.AbsoluteSize / 2
   local var432 = arg6.AbsoluteRotation
   local var7 = var0:rotate(arg3 + var4 - var0:rotate(var4, Vector2.zero, arg6.AbsoluteRotation) - arg6.AbsolutePosition + var5 - var0:rotate(var5, Vector2.zero, arg6.AbsoluteRotation) + var0:rotate(arg7 * arg4, Vector2.zero, arg6.AbsoluteRotation), Vector2.zero, var432)
   local var8 = arg6.AbsoluteSize - var2 - var3
   if var8.X == 0 then
      local var0 = var8.X
   end
   if var8.Y == 0 then
      local var0 = var8.Y
   end
   var432 = 1
   var8 = Vector2.new(var432, 1)
   if arg2 then
      local var0 = (var7 - var2 - Vector2.new(arg5.X.Offset, arg5.Y.Offset)) / (var8)
      var0 = UDim2.new(var0.X, arg5.X.Offset, var0.Y, arg5.Y.Offset)
      return var0
   end
   local var9 = var7 - var2 - Vector2.new(arg5.X.Scale, arg5.Y.Scale) * arg6.AbsoluteSize
   var0 = UDim2.new(arg5.X.Scale, var9.X, arg5.Y.Scale, var9.Y)
   return var0
end

function var1.convertAbsoluteToScaleOrOffset(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
   return arg1:convertAbsolutePositionToScaleOrOffset(arg2, arg4, arg5, arg6, arg8, arg9)arg1:convertAbsoluteSizeToScaleOrOffset(arg3, arg5, arg7, arg8),
end

return var1
