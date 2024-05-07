-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script:FindFirstAncestor("AttenuationCurveEditor").Src.Types)
local var1 = {}
function var1.setDistanceAttenuation(arg1, arg2)
   arg1:SetDistanceAttenuation(arg2)
end

function var1.getDistanceAttenuation(arg1)
   return arg1:GetDistanceAttenuation()
end

return var1
