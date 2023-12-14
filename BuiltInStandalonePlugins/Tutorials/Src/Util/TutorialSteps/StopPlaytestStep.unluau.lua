-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TutorialStep).extend("StopPlaytest")
function var0.bind(arg1)
   function arg1.tutorial.stopPlaying()
      arg1:complete()
   end
   
   arg1.tutorial:resetAttachment()
end

function var0.unbind(arg1)
   arg1.tutorial.stopPlaying = nil
end

return var0
