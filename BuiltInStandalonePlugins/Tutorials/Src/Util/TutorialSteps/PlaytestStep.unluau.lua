-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TutorialStep).extend("Playtest")
function var0.bind(arg1)
   function arg1.tutorial.startPlaying()
      arg1.callout:Destroy()
      local var16 = {}
      var16.title = arg1.tutorial.localization:getText("Tutorial", "StopPlaytest_Title")
      var16.description = arg1.tutorial.localization:getText("Tutorial", "StopPlaytest_Description")
      var16.target = "simulationResetAction"
      var16.anchorPoint = Vector2.new(0.5, 0)
      arg1.callout = arg1.tutorial:showCallout(var16)
   end
   
   function arg1.tutorial.stopPlaying()
      arg1:complete()
   end
   
   local var42 = {}
   var42.title = arg1.data.title
   var42.description = arg1.data.description
   var42.target = "playGameActionGroup"
   var42.anchorPoint = Vector2.new(0.5, 0)
   arg1.callout = arg1.tutorial:showCallout(var42)
end

function var0.unbind(arg1)
   arg1.callout:Destroy()
   arg1.tutorial.startPlaying = nil
   arg1.tutorial.stopPlaying = nil
end

return var0
