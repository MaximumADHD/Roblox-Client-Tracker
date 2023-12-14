-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TutorialStep).extend("Rotate")
var0.showComplete = true
function var0.bind(arg1)
   local var0 = arg1.tutorial.instances[arg1.data.instanceId]
   if var0 then
      local var0 = var0.CFrame.LookVector
      arg1.connection = var0:GetPropertyChangedSignal("CFrame"):Connect(function()
         if var0 == "LookVector" then
         end
         if arg1.data.distance then
            local var0 = arg1.data.rotation
            if math.deg(math.acos(var0.CFrame.LookVector:Dot(CFrame.Angles(math.rad(var0.X), math.rad(var0.Y), math.rad(var0.Z)).LookVector))) < arg1.data.distance then
               arg1:complete()
               arg1:complete()
            end
         end
         arg1:complete()
      end)
   end
end

function var0.unbind(arg1)
   if arg1.connection then
      arg1.connection:Disconnect()
   end
end

return var0
