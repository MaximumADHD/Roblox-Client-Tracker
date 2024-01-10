-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TutorialStep).extend("Playtest")
function var0.bind(arg1)
   function arg1.tutorial.startPlaying()
      arg1.callout:Destroy()
      local var60 = {}
      var60.title = arg1.tutorial.localization:getText("Tutorial", "StopPlaytest_Title")
      var60.description = arg1.tutorial.localization:getText("Tutorial", "StopPlaytest_Description")
      var60.target = "simulationResetAction"
      var60.anchorPoint = Vector2.new(0.5, 0)
      arg1.callout = arg1.tutorial:showCallout(var60)
   end
   
   function arg1.tutorial.stopPlaying()
      arg1:complete()
   end
   
   local var86 = {}
   var86.title = arg1.data.title
   var86.description = arg1.data.description
   var86.target = "playGameActionGroup"
   var86.anchorPoint = Vector2.new(0.5, 0)
   arg1.callout = arg1.tutorial:showCallout(var86)
end

function var0.unbind(arg1)
   arg1.callout:Destroy()
   arg1.tutorial.startPlaying = nil
   arg1.tutorial.stopPlaying = nil
end

return var0
