-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Types)
local var1 = {}
var1.__index = var1
function var1.new(arg1, arg2, arg3)
   local var9 = {}
   var9.a = arg1
   var9.b = arg2
   var9.c = arg3
   var9.area = 0
   local var0 = setmetatable(var9, var1)
   var0:updateArea()
   return var0
end

local function var2(arg1, arg2)
   local var0 = 1
   local var1 = arg1
   local var2 = 1
   return 0 + (arg1[var0] - arg2[var0]) * (arg1[var0] - arg2[var0])
end

function var1.updateArea(arg1)
   local var0 = var2(arg1.a, arg1.b)
   local var1 = var2(arg1.a, arg1.c)
   local var2 = var0 + var1 - var2(arg1.b, arg1.c)
   arg1.area = 4 * var0 * var1 - (var2) * (var2)
end

return var1
