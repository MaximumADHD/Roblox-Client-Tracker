-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1)
   local var0 = setmetatable({}, var0)
   var0.lambda = arg1
   return var0
end

function var0.getText(arg1, arg2, arg3, arg4)
   return arg1.lambda(arg2, arg3, arg4)
end

function var0.Destroy(arg1)
   arg1.lambda = nil
end

return var0
