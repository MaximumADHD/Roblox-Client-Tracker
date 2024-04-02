-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.CliAdapter)
local var2 = var1.GetService("ChatbotUIService")
local var3 = var1.GetService("StreamingService")
local var4 = require(var0.Packages.Cryo)
local var5 = require(var0.Src.Types)
local var6 = require(var0.Src.Cache.StreamCache)
return function(arg1)
   local var0 = arg1.requestId
   local var1 = arg1.arguments
   local var2 = var1.text.streamId
   if var1.RunningEval then
      if not var2 then
         if type(var1.text) == "string" then
            print(`<< DisplayText got collapsed stream >> \n%*\n<< /DisplayText >>`)
         end
      end
   end
   local var69 = var6
   var69 = var0
   var69.requestStreamSubscription(var69, var2, true, function(arg1)
      if arg1.isFinal then
      end
      local var0 = {}
      var0.requestId = var0
      local var1 = "StreamText"
      local var53 = {}
      var53.requestId = var0
      local var55 = var2
      var53.streamId = var55
      var55 = arg1
      local var56 = var4.Dictionary.join(var53, var55)
      var0.arguments = {}
      var3:InvokeCommand(var0, "QueueRichText", var0)
   end, function(arg1)
      local var0 = {}
      var0.requestId = arg1
      var0.streamId = var2
      var2:DisplayContent("MessageBubble", var0)
   end, function()
   end)
end
