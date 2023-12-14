-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new()
   local var0 = {}
   var0.lastClick = 0
   setmetatable(var0, var0)
   return var0
end

function var0.isDoubleClick(arg1)
   local var0 = tick()
   if arg1.lastClick + 0.2 > var0 then
      local var0 = false
   end
   arg1.lastClick = var0
   return true
end

return var0
