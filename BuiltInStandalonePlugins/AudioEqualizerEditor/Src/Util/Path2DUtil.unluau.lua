-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AudioEqualizerEditor").Bin.Common.defineLuaFlags).getFFlagPath2DEnabled()
local var1 = {}
function var1.makeControlPoint(arg1, arg2, arg3)
   if not var0 then
      return {}
   end
   if not arg1 then
      return Path2DControlPoint.new()
   end
   if arg2 then
      if not arg3 then
         return Path2DControlPoint.new(UDim2.fromOffset(arg1.X, arg1.Y))
      end
   end
   return Path2DControlPoint.new(UDim2.fromOffset(arg1.X, arg1.Y))
   return Path2DControlPoint.new(UDim2.fromOffset(arg1.X, arg1.Y), UDim2.fromOffset(arg2.X, arg2.Y), UDim2.fromOffset(arg3.X, arg3.Y))
end

return var1
