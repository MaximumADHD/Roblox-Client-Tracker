-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.TutorialStep).extend("ToolboxSearch")
function var0.bind(arg1)
   local var0 = arg1.tutorial.toolboxConnection
   var0:ensureEventExists("SearchRequested")
   arg1.connection = var0:Connect("SearchRequested", function(arg1)
      arg1:complete()
   end)
end

function var0.unbind(arg1)
   arg1.connection:Disconnect()
end

return var0
