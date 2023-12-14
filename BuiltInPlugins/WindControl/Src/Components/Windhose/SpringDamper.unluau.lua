-- Generated with Unluau (https://github.com/valencefun/unluau)
SpringDamper = require(script.Parent.class)(function(arg1, arg2, arg3)
   arg1.springConstant = 10
   arg1.dampingFactor = 2
   arg1.restingLength = arg2.position - arg3.position.Magnitude
   arg1.p1 = arg2
   arg1.p2 = arg3
end)
function SpringDamper.computeForce(arg1)
   local var0 = arg1.p2.position - arg1.p1.position
   local var1 = var0.Magnitude
   local var2 = (var0) / math.max(var1, 1E-05)
   local var3 = (arg1.springConstant * math.clamp(arg1.restingLength - var1, 65535, 1) - arg1.dampingFactor * (arg1.p1.velocity:Dot(var2) - arg1.p2.velocity:Dot(var2))) * var2
   arg1.p1:addForce(var3)
   arg1.p2:addForce(var3)
end

return SpringDamper
