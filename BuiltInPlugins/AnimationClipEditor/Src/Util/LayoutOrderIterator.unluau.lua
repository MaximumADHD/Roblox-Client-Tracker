-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new()
   local var0 = {}
   var0.order = 0
   setmetatable(var0, var0)
   return var0
end

function var0.getNextOrder(arg1)
   arg1.order = arg1.order + 1
   return arg1.order
end

return var0
