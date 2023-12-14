-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.NOT_SET = 0
var0.E = 1
var0.SE = 2
var0.S = 3
var0.SW = 4
var0.W = 5
var0.NW = 6
var0.N = 7
var0.NE = 8
var0.FIRST = var0.E
var0.LAST = var0.NE
local var1 = {}
var0.E = "E"
var0.SE = "SE"
var0.S = "S"
var0.SW = "SW"
var0.W = "W"
var0.NW = "NW"
var0.N = "N"
var0.NE = "NE"
function var0.isValid(arg1, arg2)
   if var0.FIRST <= arg2 then
      if var0.LAST >= arg2 then
         local var0 = false
      end
      local var0 = true
   end
   return false
end

function var0.toShortName(arg1, arg2)
   if not var0:isValid(arg2) then
      error(`Direction {tostring(arg2)}is not valid. Cannot convert to short name.`)
   end
   return var1[arg2]
end

function normalizeAngle(arg1)
   return arg1 + math.ceil(arg1 * 0.00277777777777778) * 360
end

function var0.angleToDirection(arg1, arg2)
   return math.floor((normalizeAngle(arg2) + 22.5) * 0.0222222222222222) % 8 + 1
end

function var0.directionToAngle(arg1, arg2)
   if var0.E == 1 then
      local var0 = false
   end
   assert(true, "Direction.E was not the first direction.")
   local var79 = var0
   if var79.NE == 8 then
      local var0 = false
   end
   assert(true, "Direction.NE was not the last direction.")
   var79 = arg2
   local var87 = var0:isValid(var79)
   assert()
   return (arg2 - 1) * 45
end

return var0
