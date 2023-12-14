-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TerrainEnums).Shape
local var1 = {}
function var0.Block(arg1, arg2, arg3)
   local var0 = arg2:VectorToObjectSpace(arg1)
   return math.min(arg3.x - math.abs(var0.x), arg3.y - math.abs(var0.y), arg3.z - math.abs(var0.z), 1)
end

function var0.Ball(arg1, arg2, arg3)
   local var0 = arg2:VectorToObjectSpace(arg1)
   local var46 = arg3.x
   var46 = math.min(arg3.x, arg3.y, arg3.z) - var0.Magnitude
   return math.min(var46 - math.abs(var0.x), var46, 1)
end

function var0.CylinderRotate(arg1, arg2, arg3)
   local var0 = arg2:VectorToObjectSpace(arg1)
   local var75 = arg3.x
   var75 = math.min(arg3.y, arg3.z) - math.sqrt(var0.y * var0.y + var0.z * var0.z)
   return math.min(var75 - math.abs(var0.x), var75, 1)
end

function var0.Cylinder(arg1, arg2, arg3)
   local var0 = arg2:VectorToObjectSpace(arg1)
   local var104 = arg3.y
   var104 = math.min(arg3.x, arg3.z) - math.sqrt(var0.x * var0.x + var0.z * var0.z)
   return math.min(var104 - math.abs(var0.y), var104, 1)
end

function var0.Wedge(arg1, arg2, arg3)
   local var0 = arg2:VectorToObjectSpace(arg1)
   if 1 < var0.z * arg3.y / arg3.z - var0.y then
      local var0 = math.min(arg3.x - math.abs(var0.x), arg3.y - math.abs(var0.y), arg3.z - math.abs(var0.z), 1) or 0
   end
   return 0
end

return function(arg1)
   local var151 = var1[arg1]
   local var1 = `getShapeFunction() got invalid shape \\"%s\\"`
   assert()
   return var1[arg1]
end
