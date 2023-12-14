-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.ConvertTransformToRegion)
local function fun0(arg1)
   return Vector3.new(math.floor(arg1.X), math.floor(arg1.Y), math.floor(arg1.Z))
end

local function fun1(arg1)
   return Vector3.new(math.ceil(arg1.X), math.ceil(arg1.Y), math.ceil(arg1.Z))
end

local function fun2(arg1)
   local var0 = bit32.band(arg1, 1023)
   var0 = bit32.band(bit32.bor(arg1, bit32.lshift(arg1, 16)), 50331903)
   var0 = bit32.band(bit32.bor(var0, bit32.lshift(var0, 8)), 50393103)
   var0 = bit32.band(bit32.bor(var0, bit32.lshift(var0, 4)), 51130563)
   return bit32.band(bit32.bor(var0, bit32.lshift(var0, 2)), 153391689)
end

local function fun3(arg1, arg2, arg3)
   local var84 = bit32.band(arg1, 1023)
   var84 = bit32.band(bit32.bor(arg1, bit32.lshift(arg1, 16)), 50331903)
   var84 = bit32.band(bit32.bor(var84, bit32.lshift(var84, 8)), 50393103)
   var84 = bit32.band(bit32.bor(var84, bit32.lshift(var84, 4)), 51130563)
   local var124 = bit32.band(bit32.bor(var84, bit32.lshift(var84, 2)), 153391689)
   local var129 = bit32.band(arg2, 1023)
   var129 = bit32.band(bit32.bor(arg2, bit32.lshift(arg2, 16)), 50331903)
   var129 = bit32.band(bit32.bor(var129, bit32.lshift(var129, 8)), 50393103)
   var129 = bit32.band(bit32.bor(var129, bit32.lshift(var129, 4)), 51130563)
   var124 = bit32.band(bit32.bor(var129, bit32.lshift(var129, 2)), 153391689)
   local var176 = bit32.band(arg3, 1023)
   var176 = bit32.band(bit32.bor(arg3, bit32.lshift(arg3, 16)), 50331903)
   var176 = bit32.band(bit32.bor(var176, bit32.lshift(var176, 8)), 50393103)
   var176 = bit32.band(bit32.bor(var176, bit32.lshift(var176, 4)), 51130563)
   return bit32.bor(var124, bit32.lshift(var124, 1), bit32.lshift(bit32.band(bit32.bor(var176, bit32.lshift(var176, 2)), 153391689), 2))
end

return function(arg1, arg2)
   local var0 = {}
   local var1 = {}
   local var2 = {}
   local var3 = {}
   local var4 = var0(arg1, arg2)
   local var5 = Vector3.new(var4.Min.X, var4.Min.Y, var4.Min.Z)
   local var6 = Vector3.new(var4.Max.X, var4.Max.Y, var4.Max.Z)
   local var249 = var5 / 64
   local var8 = Vector3.new(math.floor(var249.X), math.floor(var249.Y), math.floor(var249.Z)) * 64
   local var263 = var6 / 64
   var249 = Vector3.new(math.ceil(var263.X), math.ceil(var263.Y), math.ceil(var263.Z))
   local var9 = var249 * 64
   local var10 = Region3int16.new(Vector3int16.new(var8.X, var8.Y, var8.Z), Vector3int16.new(var9.X, var9.Y, var9.Z))
   local var289 = var10.Min.X
   local var291 = var10.Max.X
   local var292 = 64
   local var11 = var10.Min.Y
   local var12 = var10.Max.Y
   local var13 = 64
   local var14 = var10.Min.Z
   local var15 = var10.Max
   local var16 = var15.Z
   local var17 = 64
   local var308 = math.round((var289 - var10.Min.X) / 64)
   local var314 = math.round((var11 - var10.Min.Y) / 64)
   local var315 = var10.Min
   local var317 = var14 - var315.Z
   local var320 = math.round((var317) / 64)
   var315 = var308
   local var323 = bit32.band(var315, 1023)
   var323 = bit32.band(bit32.bor(var308, bit32.lshift(var308, 16)), 50331903)
   var323 = bit32.band(bit32.bor(var323, bit32.lshift(var323, 8)), 50393103)
   var323 = bit32.band(bit32.bor(var323, bit32.lshift(var323, 4)), 51130563)
   local var363 = bit32.band(bit32.bor(var323, bit32.lshift(var323, 2)), 153391689)
   var317 = var363
   local var367 = bit32.band(var314, 1023)
   var367 = bit32.band(bit32.bor(var314, bit32.lshift(var314, 16)), 50331903)
   var367 = bit32.band(bit32.bor(var367, bit32.lshift(var367, 8)), 50393103)
   var367 = bit32.band(bit32.bor(var367, bit32.lshift(var367, 4)), 51130563)
   var363 = bit32.band(bit32.bor(var367, bit32.lshift(var367, 2)), 153391689)
   local var414 = bit32.band(var320, 1023)
   var414 = bit32.band(bit32.bor(var320, bit32.lshift(var320, 16)), 50331903)
   var414 = bit32.band(bit32.bor(var414, bit32.lshift(var414, 8)), 50393103)
   var414 = bit32.band(bit32.bor(var414, bit32.lshift(var414, 4)), 51130563)
   local var460 = bit32.bor(var317, bit32.lshift(var363, 1), bit32.lshift(bit32.band(bit32.bor(var414, bit32.lshift(var414, 2)), 153391689), 2))
   var15 = var460
   var314 = var289
   var320 = var11
   var460 = var14
   local var22 = Vector3.new(var314, var320, var460):Max(var5)
   local var23 = Vector3.new(var289 + 64, var11 + 64, var14 + 64):Min(var6)
   if var22.X >= var23.X then
      if var22.Y >= var23.Y then
         if var22.Z >= var23.Z then
            local var492 = Vector3int16.new(var23.X, var23.Y, var23.Z)
            local var0 = Region3int16.new(Vector3int16.new(var22.X, var22.Y, var22.Z) - var4.Min, var492 - var4.Min)
            var492 = var0
            table.insert(var0, var492)
            Region3int16.new(Vector3int16.new(var22.X, var22.Y, var22.Z) - var4.Min, var492 - var4.Min) = var15
            local var1 = Vector3int16.new(var22.X, var22.Y, var22.Z)
            table.insert(var1, var1)
            Vector3int16.new(var22.X, var22.Y, var22.Z) = var15
         end
      end
   end
   var292 = var0
   table.sort(var292, function(arg1)
      return Vector3.new(math.floor(arg1.X), math.floor(arg1.Y), math.floor(arg1.Z))
   end)
   table.sort(var1, function(arg1)
      return Vector3.new(math.ceil(arg1.X), math.ceil(arg1.Y), math.ceil(arg1.Z))
   end)
   return var0var1,
end
