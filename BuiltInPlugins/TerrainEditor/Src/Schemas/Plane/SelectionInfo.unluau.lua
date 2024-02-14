-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1, arg2)
   if arg2 == 1 then
      local var0 = false
   end
   assert(true, "Expected selection to have length 1.")
   local var8 = {}
   var8._transform = arg2[1]
   var8._draggerContext = arg1
   return setmetatable(var8, var0)
end

function var0.isEmpty(arg1)
   return false
end

function var0.getBoundingBox(arg1)
   if arg1._draggerContext:shouldUseLocalSpace() then
      return arg1:getLocalBoundingBox()
   end
   return CFrame.new(arg1._transform.Transform.Position)Vector3.new(),Vector3.new(),
end

function var0.getLocalBoundingBox(arg1)
   return arg1._transform.TransformVector3.new(),Vector3.new(),
end

function var0.doesContainItem(arg1, arg2)
   return true
end

function var0.isDynamic(arg1)
   return false
end

return var0
