-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1, arg2)
   local var0 = {}
   var0.arg = arg1
   var0.Status = arg2
   setmetatable(var0, var0)
   return var0
end

function var0.GetArg(arg1)
   return arg1.arg
end

return var0
