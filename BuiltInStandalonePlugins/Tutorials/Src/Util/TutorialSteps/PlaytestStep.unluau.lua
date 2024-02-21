-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TutorialStep).extend("Playtest")
function var0.bind(arg1)
   function arg1.tutorial.startPlaying()
      arg1.callout:Destroy()
      local var252 = {}
      var252.title = arg1.tutorial.localization:getText("Tutorial", "StopPlaytest_Title")
      var252.description = arg1.tutorial.localization:getText("Tutorial", "StopPlaytest_Description")
      var252.target = "simulationResetAction"
      var252.anchorPoint = Vector2.new(0.5, 0)
      arg1.callout = arg1.tutorial:showCallout(var252)
   end
   
   function arg1.tutorial.stopPlaying()
      arg1:complete()
   end
   
   local var278 = {}
   var278.title = arg1.data.title
   var278.description = arg1.data.description
   var278.target = "playGameActionGroup"
   var278.anchorPoint = Vector2.new(0.5, 0)
   arg1.callout = arg1.tutorial:showCallout(var278)
end

function var0.unbind(arg1)
   arg1.callout:Destroy()
   arg1.tutorial.startPlaying = nil
   arg1.tutorial.stopPlaying = nil
end

return var0
