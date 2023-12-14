-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ChatbotUIService")
local var1 = game:GetService("StreamingService")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Packages.Cryo)
local var4 = require(var2.Src.Types)
local var5 = require(var2.Src.Cache.StreamCache)
return function(arg1)
   local var0 = arg1.requestId
   local var53 = var5
   var53 = var0
   var53.requestStreamSubscription(var53, arg1.arguments.text.streamId, true, function(arg1)
      if arg1.isFinal then
      end
      local var0 = {}
      var0.requestId = var0
      local var1 = "StreamText"
      local var39 = {}
      local var40 = var0
      var39.requestId = var40
      var40 = arg1
      local var41 = var3.Dictionary.join(var39, var40)
      var0.arguments = {}
      var1:InvokeCommand(var0, "QueueRichText", var0)
   end, function(arg1)
      local var0 = {}
      var0.requestId = arg1
      var0:DisplayContent("MessageBubble", var0)
   end, function()
   end)
end
