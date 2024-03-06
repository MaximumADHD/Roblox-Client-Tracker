-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Packages.Framework).Util.Signal
local var1 = {}
var1.__index = var1
function var1.new()
   local var11 = {}
   var11.Origin = CFrame.new()
   var11.UnitRay = Ray.new(Vector3.new(), Vector3.new())
   var11.Target = nil
   var11.WheelForward = var0.new()
   var11.WheelBackward = var0.new()
   return setmetatable(var11, var1)
end

return var1
