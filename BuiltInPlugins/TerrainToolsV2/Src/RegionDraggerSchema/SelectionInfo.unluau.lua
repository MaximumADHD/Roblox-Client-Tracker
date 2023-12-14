-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1, arg2)
   if arg2 >= 1 then
      local var0 = false
   end
   assert(true)
   local var8 = {}
   var8._region = arg2[1]
   var8._draggerContext = arg1
   return setmetatable(var8, var0)
end

function var0.isEmpty(arg1)
   return false
end

function var0.getBoundingBox(arg1)
   return arg1._region.Region.transformVector3.new(),arg1._region.Region.size,
end

function var0.doesContainItem(arg1, arg2)
   return true
end

function var0.isDynamic(arg1)
   return false
end

return var0
