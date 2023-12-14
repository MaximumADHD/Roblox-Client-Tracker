-- Generated with Unluau (https://github.com/valencefun/unluau)
Particle = require(script.Parent.class)(function(arg1, arg2, arg3)
   arg1.velocity = Vector3.new(0, 0, 0)
   arg1.mass = arg3
   arg1.acceleration = Vector3.new(0, 0, 0)
   arg1.momentum = Vector3.new(0, 0, 0)
   arg1.force = Vector3.new(0, 0, 0)
   arg1.position = arg2
end)
function Particle.addForce(arg1, arg2)
   arg1.force = arg1.force + arg2
end

function Particle.update(arg1, arg2, arg3)
   arg1.acceleration = 1 / arg1.mass * arg1.force
   arg1.velocity = arg1.velocity * (1 - 0.00015 * arg2)
   arg1.velocity = arg1.velocity + arg1.acceleration * arg2
   if not arg3 then
      arg1.position = arg1.position + arg1.velocity * arg2
   end
   arg1.force = Vector3.new(0, 0, 0)
end

return Particle
