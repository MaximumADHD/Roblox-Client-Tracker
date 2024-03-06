-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new()
   local var1 = {}
   var1._localUserId = 0
   return setmetatable(var1, var0)
end

function var0.GetUserId(arg1)
   return arg1._localUserId
end

return var0
