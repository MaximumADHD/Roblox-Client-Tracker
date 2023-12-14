-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = {}
var0.textFieldCount = 0
var0.sliderCount = 0
var0.greenCircleCount = 0
function var0.reset(arg1)
   arg1.textFieldCount = 0
   arg1.sliderCount = 0
   arg1.greenCircleCount = 0
end

function var0.totalCount(arg1)
   return arg1.textFieldCount + arg1.sliderCount + arg1.greenCircleCount
end

return var0
