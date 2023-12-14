-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1, ...)
   local var2 = {}
   var2._draggerContext = arg1
   return setmetatable(var2, var0)
end

function var0.beginDrag(arg1, arg2, arg3)
   if arg2 == 1 then
      local var0 = false
   end
   assert(true, "Expected selection to have length 1")
   local var0 = arg2[1]
   arg1._transform = var0.Region.transform
   arg1._size = var0.Region.size
end

function var0.updateDrag(arg1, arg2)
   local var23 = arg1._draggerContext
   var23 = arg2 * arg1._transform
   var23.updateRegion(var23, arg1._size)
   return arg2
end

function var0.endDrag(arg1)
end

function var0.render(arg1, arg2)
end

return var0
