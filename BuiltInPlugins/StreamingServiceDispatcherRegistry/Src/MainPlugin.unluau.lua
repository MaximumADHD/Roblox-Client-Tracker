-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Commands.CommandRegistry)
local var2 = require(var0.Src.Listeners.StreamingServiceListener)
local var3 = require(var0.Src.ContextCollectors.DefaultContextCollector)
local var4 = game:GetFastFlag("CAPAddTutorialWorkflowLinks")
local var5 = {}
var5.__index = var5
function var5.new()
   local var0 = {}
   setmetatable(var0, var5)
   return var0
end

function var5.init(arg1)
   local var0 = var1
   local var1 = game:GetService("StreamingService")
   if var1 then
      local var35 = pairs(var0.parallel)
      var1:RegisterCommand(var36, var37)
      local var41 = pairs(var0.sequential)
      var1:RegisterSequentialCommand(var42, var43)
      arg1.streamingServiceListener = var2.new()
      var3.register()
   end
   if var4 then
      game:GetService("ChatbotUIService"):DisplayContent("PluginConnected", {})
   end
end

function var5.destroy(arg1)
   local var0 = var1
   local var1 = game:GetService("StreamingService")
   local var66 = pairs(var0.parallel)
   var1:UnregisterCommand(var67)
   local var71 = pairs(var0.sequential)
   var1:UnregisterCommand(var72)
   if arg1.streamingServiceListener then
      arg1.streamingServiceListener:destroy()
      arg1.streamingServiceListener = nil
   end
   require(var0.Src.Commands.BuilderCommands.BuilderNameMap).destroy()
   require(var0.Src.Utils.Utils).destroy()
   var3.unregister()
end

return var5
