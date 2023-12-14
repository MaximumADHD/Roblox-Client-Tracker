-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.Constants)
return function(arg1, arg2)
   local var0 = arg1.Position / var0.GRID_SIZE
   local var1 = Vector3.new(math.floor(var0.x) * var0.GRID_SIZE, math.floor(var0.y) * var0.GRID_SIZE, math.floor(var0.z) * var0.GRID_SIZE)
   local var2 = arg2.Position / var0.GRID_SIZE
   local var53 = math.floor(var2.z)
   local var4 = Vector3.new(math.floor(var2.x) * var0.GRID_SIZE, math.floor(var2.y) * var0.GRID_SIZE, var53 * var0.GRID_SIZE)
   local var5 = var1:Min(var4)
   var53 = var1
   local var6 = var4:Max(var53)
   local var7 = var6 - var5
   var7 = var7:Max(Vector3.new(var0.GRID_SIZE, var0.GRID_SIZE, var0.GRID_SIZE))
   local var8 = {}
   var8.size = var7
   var8.transform = CFrame.new((var6 + var5) / 2)
   return var8
end
