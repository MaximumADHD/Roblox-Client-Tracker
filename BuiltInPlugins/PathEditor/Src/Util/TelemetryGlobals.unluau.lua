-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.selectModeCount = 0
var0.addPointModeCount = 0
var0.addTangentModeCount = 0
function var0.totalCount(arg1)
   return arg1.selectModeCount + arg1.addPointModeCount + arg1.addTangentModeCount
end

function var0.reset(arg1)
   arg1.selectModeCount = 0
   arg1.addPointModeCount = 0
   arg1.addTangentModeCount = 0
end

return var0
