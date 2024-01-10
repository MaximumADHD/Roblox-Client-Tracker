-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent
local var1 = require(var0.Src.Commands.CommandRegistry)
local var2 = require(var0.Src.Listeners.StreamingServiceListener)
local var3 = require(var0.Src.ContextCollectors.DefaultContextCollector)
local var4 = {}
var4.__index = var4
function var4.new()
   local var0 = {}
   setmetatable(var0, var4)
   return var0
end

function var4.init(arg1)
   local var0 = var1
   local var1 = game:GetService("StreamingService")
   if var1 then
      local var31 = pairs(var0.parallel)
      var1:RegisterCommand(var32, var33)
      local var37 = pairs(var0.sequential)
      var1:RegisterSequentialCommand(var38, var39)
      arg1.streamingServiceListener = var2.new()
      var3.register()
   end
   game:GetService("ChatbotUIService"):DisplayContent("PluginConnected", {})
end

function var4.destroy(arg1)
   local var0 = var1
   local var1 = game:GetService("StreamingService")
   local var61 = pairs(var0.parallel)
   var1:UnregisterCommand(var62)
   local var66 = pairs(var0.sequential)
   var1:UnregisterCommand(var67)
   if arg1.streamingServiceListener then
      arg1.streamingServiceListener:destroy()
      arg1.streamingServiceListener = nil
   end
   require(var0.Src.Commands.BuilderCommands.BuilderNameMap).destroy()
   require(var0.Src.Utils.Utils).destroy()
   var3.unregister()
end

return var4
