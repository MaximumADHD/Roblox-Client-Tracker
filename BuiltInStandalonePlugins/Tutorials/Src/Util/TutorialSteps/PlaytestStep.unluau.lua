-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TutorialStep).extend("Playtest")
function var0.bind(arg1)
   function arg1.tutorial.startPlaying()
      arg1.callout:Destroy()
      local var63 = {}
      var63.title = arg1.tutorial.localization:getText("Tutorial", "StopPlaytest_Title")
      var63.description = arg1.tutorial.localization:getText("Tutorial", "StopPlaytest_Description")
      var63.target = "simulationResetAction"
      var63.anchorPoint = Vector2.new(0.5, 0)
      arg1.callout = arg1.tutorial:showCallout(var63)
   end
   
   function arg1.tutorial.stopPlaying()
      arg1:complete()
   end
   
   local var89 = {}
   var89.title = arg1.data.title
   var89.description = arg1.data.description
   var89.target = "playGameActionGroup"
   var89.anchorPoint = Vector2.new(0.5, 0)
   arg1.callout = arg1.tutorial:showCallout(var89)
end

function var0.unbind(arg1)
   arg1.callout:Destroy()
   arg1.tutorial.startPlaying = nil
   arg1.tutorial.stopPlaying = nil
end

return var0
