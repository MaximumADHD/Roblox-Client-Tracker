-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Commands.CommandRegistry)
local var2 = require(var0.Src.Listeners.StreamingServiceListener)
local var3 = require(var0.Src.ContextCollectors.DefaultContextCollector)
local var4 = require(var0.Src.Commands.BuilderCommands.BuilderNameMap)
local var5 = require(var0.Src.Utils.Utils)
local var6 = {}
var6.__index = var6
function var6.new()
   local var0 = {}
   setmetatable(var0, var6)
   return var0
end

function var6.init(arg1)
   local var0 = var1
   local var1 = game:GetService("StreamingService")
   if var1 then
      local var43 = pairs(var0.parallel)
      var1:RegisterCommand(var44, var45)
      local var49 = pairs(var0.sequential)
      var1:RegisterSequentialCommand(var50, var51)
      arg1.streamingServiceListener = var2.new()
      var3.register()
   end
   game:GetService("ChatbotUIService"):DisplayContent("PluginConnected", {})
end

function var6.destroy(arg1)
   local var0 = var1
   local var1 = game:GetService("StreamingService")
   local var73 = pairs(var0.parallel)
   var1:UnregisterCommand(var74)
   local var78 = pairs(var0.sequential)
   var1:UnregisterCommand(var79)
   if arg1.streamingServiceListener then
      arg1.streamingServiceListener:destroy()
      arg1.streamingServiceListener = nil
   end
   var4.destroy()
   var5.destroy()
   var3.unregister()
end

return var6
