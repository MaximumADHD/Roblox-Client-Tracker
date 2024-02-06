-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TutorialStep).extend("Focus")
var0.showComplete = true
function var0.bind(arg1)
   arg1.connection = arg1.tutorial.dataModel:GetService("Workspace").CurrentCamera.Changed:Connect(function(...)
      arg1:complete()
   end)
end

function var0.unbind(arg1)
   arg1.connection:Disconnect()
end

return var0
