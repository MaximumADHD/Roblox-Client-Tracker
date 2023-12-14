-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TutorialStep).extend("Scale")
var0.showComplete = true
function var0.bind(arg1)
   local var0 = arg1.tutorial.instances[arg1.data.instanceId]
   if var0 then
      arg1.connection = var0:GetPropertyChangedSignal("Size"):Connect(function()
         local var0 = var0.Size
         local var1 = arg1.data.minSize
         if var1.X <= var0.X then
            if var1.Y <= var0.Y then
               if var1.Z <= var0.Z then
                  arg1:complete()
               end
            end
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
