-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.getVector2FromUDim2Scale)
local function var1(arg1, arg2)
   arg2 = math.clamp(arg2, 0, 1)
   local var0 = arg1:GetControlPoints() - 1
   local var1 = math.clamp(arg2 * (var0), 0, var0 - 1)
   local var2 = var1
   local var3 = arg2 * (var0) - var1
   return {}
end

return function(arg1, arg2)
   local var0 = 5000
   local var1 = 0
   local var36 = 500
   local var3 = var0(arg1:getPositionOnCurve(var1 / 500), arg1.Parent)
   local var4 = var3 - arg2.Magnitude
   if var4 < var0 then
      var0 = var4
      local var0 = var1(arg1, var1 / 500)[1]
      local var1 = var1 / 500
   end
   1 = 0
   var1 = var0
   var3 = 0
   return {}
end
