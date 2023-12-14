-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent.Parent
local var1 = require(script.Parent.TutorialStep).extend("Avatar")
var1.showComplete = true
function var1.bind(arg1)
   arg1.connection = var0:OnInvoke("ChangeHumanoidState", function(arg1)
      if arg1 == "state" then
         arg1:complete()
      end
   end)
end

function var1.unbind(arg1)
   arg1.connection:Disconnect()
end

return var1
