-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.__index = var0
function var0.new(arg1)
   local var2 = {}
   var2._draggerContext = arg1
   var2._updatePlaneFn = arg1.updatePlaneFn
   return setmetatable(var2, var0)
end

function var0.beginDrag(arg1, arg2, arg3)
   if arg2 == 1 then
      local var0 = false
   end
   assert(true, "Expected selection to have length 1.")
   arg1.initCFrame = arg2[1].planeCFrame
end

function var0.updateDrag(arg1, arg2)
   arg1._updatePlaneFn(arg2 * arg1.initCFrame)
   return arg2
end

function var0.endDrag(arg1)
end

function var0.render(arg1, arg2)
   return nil
end

return var0
