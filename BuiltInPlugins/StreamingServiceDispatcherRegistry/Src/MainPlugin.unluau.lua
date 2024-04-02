-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.CliAdapter)
local var2 = require(var0.Src.Commands.CommandRegistry)
local var3 = require(var0.Src.Listeners.StreamingServiceListener)
local var4 = require(var0.Src.ContextCollectors.DefaultContextCollector)
local var5 = require(var0.Src.Commands.BuilderCommands.BuilderNameMap)
local var6 = require(var0.Src.Utils.Utils)
local var7 = {}
var7.__index = var7
function var7.new()
   local var0 = {}
   setmetatable(var0, var7)
   return var0
end

function var7.init(arg1)
   local var0 = var2
   local var1 = var1.GetService("StreamingService")
   if var1 then
      local var173 = pairs(var0.parallel)
      var1:RegisterCommand(var174, var175)
      local var179 = pairs(var0.sequential)
      var1:RegisterSequentialCommand(var180, var181)
      arg1.streamingServiceListener = var3.new()
      var4.register()
   end
   var1.GetService("ChatbotUIService"):DisplayContent("PluginConnected", {})
end

function var7.destroy(arg1)
   local var0 = var2
   local var1 = var1.GetService("StreamingService")
   local var203 = pairs(var0.parallel)
   var1:UnregisterCommand(var204)
   local var208 = pairs(var0.sequential)
   var1:UnregisterCommand(var209)
   if arg1.streamingServiceListener then
      arg1.streamingServiceListener:destroy()
      arg1.streamingServiceListener = nil
   end
   var5.destroy()
   var6.destroy()
   var4.unregister()
end

return var7
