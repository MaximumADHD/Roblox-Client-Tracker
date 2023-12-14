-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TutorialStep).extend("Move")
var0.showComplete = true
function var0.bind(arg1)
   local var0 = arg1.tutorial.instances[arg1.data.instanceId]
   if var0 then
      arg1.connection = var0:GetPropertyChangedSignal("Position"):Connect(function()
         if var0:GetPivot().Position - arg1.data.position.Magnitude < arg1.data.distance then
            arg1:complete()
         end
      end)
   end
end

function var0.unbind(arg1)
   if arg1.connection then
      arg1.connection:Disconnect()
   end
end

return var0
