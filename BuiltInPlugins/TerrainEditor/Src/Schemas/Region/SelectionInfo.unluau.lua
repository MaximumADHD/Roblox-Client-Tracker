-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1, arg2)
   local var3 = {}
   var3._region = arg2[1]
   var3._draggerContext = arg1
   return setmetatable(var3, var0)
end

function var0.isEmpty(arg1)
   return false
end

function var0.getBoundingBox(arg1)
   if arg1._draggerContext:shouldUseLocalSpace() then
      return arg1._region.Region.transformVector3.new(),arg1._region.Region.size,
   end
   return arg1._region.Region.transformVector3.new(),arg1._region.Region.size,
end

function var0.doesContainItem(arg1, arg2)
   return true
end

function var0.isDynamic(arg1)
   return false
end

return var0
