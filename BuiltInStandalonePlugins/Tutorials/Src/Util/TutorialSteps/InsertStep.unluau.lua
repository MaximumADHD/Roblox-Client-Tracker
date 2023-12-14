-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetFastFlag("TutorialsDraggerSteps")
local var1 = require(script.Parent.TutorialStep).extend("Insert")
var1.showComplete = true
function var1.bind(arg1)
   arg1.connection = arg1.tutorial.dataModel:GetService("Workspace").ChildAdded:Connect(function(arg1)
      if arg1:IsA(arg1.data.className) then
         if var0 then
            if arg1.data.properties then
               local var0 = arg1
               local var1 = var0.data
               local var2 = var1.properties
               local var3 = nil
               local var4 = nil
               if arg1[var1] ~= var0 then
               end
            end
         end
         if arg1.data.instanceId then
            local var0 = arg1.tutorial.instances
            arg1.data.instanceId = arg1
         end
         arg1:complete()
      end
   end)
end

function var1.unbind(arg1)
   arg1.connection:Disconnect()
end

return var1
