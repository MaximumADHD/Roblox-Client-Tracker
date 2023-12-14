-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Constants)
return function(arg1, arg2)
   local var0 = arg1:Inverse()
   local var1 = arg2 * var0.RightVector
   local var2 = arg2 * var0.UpVector
   local var3 = arg2 * var0.LookVector
   local var4 = arg1.Position
   local var5 = Vector3.new(math.abs(var1.x) + math.abs(var1.y) + math.abs(var1.z), math.abs(var2.x) + math.abs(var2.y) + math.abs(var2.z), math.abs(var3.x) + math.abs(var3.y) + math.abs(var3.z)) / 2
   return Region3.new(var4 - var5, var4 + var5):ExpandToGrid(var0.VOXEL_RESOLUTION)
end
