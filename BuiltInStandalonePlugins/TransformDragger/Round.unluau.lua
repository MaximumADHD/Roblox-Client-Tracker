-- Generated with Unluau (https://github.com/valencefun/unluau)
function round(arg1)
   return math.floor(arg1 + 0.5)
end

function roundToNearest(arg1, arg2)
   if arg2 then
      if arg2 == 0 then
         return arg1
      end
   end
   return arg1
   local var0 = arg1 + arg2 / 2
   return var0 - (var0) % arg2
end

function roundVector3(arg1)
   local var0 = round(arg1.X)
   local var1 = round(arg1.Y)
   local var2 = round(arg1.Z)
   return Vector3.new()
end

function roundVector3ToNearest(arg1, arg2)
   local var0 = roundToNearest(arg1.X, arg2)
   local var1 = roundToNearest(arg1.Y, arg2)
   local var2 = roundToNearest(arg1.Z, arg2)
   return Vector3.new()
end

local var0 = {}
var0.roundToNearest = roundToNearest
var0.roundVector3ToNearest = roundVector3ToNearest
return var0
