-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).Util.Signal
local var1 = {}
var1.__index = var1
function var1.new()
   local var0 = {}
   local var12 = var0
   var0.VREnabledSignal = var12.new()
   var0.VREnabled = false
   var12 = var0
   setmetatable(var12, var1)
   return var0
end

function var1.GetPropertyChangedSignal(arg1, arg2)
   if arg2 == "VREnabled" then
      return arg1.VREnabledSignal
   end
   return nil
end

return var1
