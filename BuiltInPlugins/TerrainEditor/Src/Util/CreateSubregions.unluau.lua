-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.ConvertTransformToRegion)
local function fun0(arg1)
   return Vector3.new(math.floor(arg1.X), math.floor(arg1.Y), math.floor(arg1.Z))
end

local function fun1(arg1)
   return Vector3.new(math.ceil(arg1.X), math.ceil(arg1.Y), math.ceil(arg1.Z))
end

return function(arg1, arg2)
   local var0 = {}
   local var1 = {}
   local var2 = var0(arg1, arg2)
   local var3 = Vector3.new(var2.Min.X, var2.Min.Y, var2.Min.Z)
   local var4 = Vector3.new(var2.Max.X, var2.Max.Y, var2.Max.Z)
   local var57 = var3 / 400
   local var6 = Vector3.new(math.floor(var57.X), math.floor(var57.Y), math.floor(var57.Z)) * 400
   local var71 = var4 / 400
   var57 = Vector3.new(math.ceil(var71.X), math.ceil(var71.Y), math.ceil(var71.Z))
   local var8 = var57 * 400
   local var9 = Region3int16.new(Vector3int16.new(var6.X, var6.Y, var6.Z), Vector3int16.new(var8.X, var8.Y, var8.Z))
   local var10 = var9.Min.X
   local var11 = var9.Max.X
   local var12 = 400
   local var13 = var9.Min.Y
   local var14 = var9.Max.Y
   local var15 = 400
   local var16 = var9.Min.Z
   local var17 = var9.Max.Z
   local var18 = 400
   local var19 = Vector3.new(var10, var13, var16):Max(var3)
   local var20 = Vector3.new(var10 + 400, var13 + 400, var16 + 400):Min(var4)
   if var19.X >= var20.X then
      if var19.Y >= var20.Y then
         local var0 = var20.Z
         if var19.Z >= var0 then
            var0 = var0
            local var148 = Region3int16.new(Vector3int16.new(var19.X, var19.Y, var19.Z) - var2.Min, Vector3int16.new(var20.X, var20.Y, var20.Z) - var2.Min)
            table.insert()
            table.insert(var1, Vector3int16.new(var19.X, var19.Y, var19.Z))
         end
      end
   end
   return var0var1,
end
