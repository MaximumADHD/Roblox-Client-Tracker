-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ChatbotUIService")
local var1 = game:GetService("StreamingService")
local var2 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var3 = require(var2.Packages.Cryo)
local var4 = require(var2.Src.Types)
local var5 = require(var2.Src.Cache.StreamCache)
local var6 = require(var2.Src.Flags.getFFlagCAPAddStreamIdToRichTextContent)
return function(arg1)
   local var0 = arg1.requestId
   local var1 = arg1.arguments.text.streamId
   local var67 = var5
   var67 = var0
   var67.requestStreamSubscription(var67, var1, true, function(arg1)
      if arg1.isFinal then
      end
      local var0 = {}
      var0.requestId = var0
      local var1 = "StreamText"
      local var44 = {}
      var44.requestId = var0
      if var6() then
         local var0 = var1 or nil
      end
      local var51 = nil
      var44.streamId = var51
      var51 = arg1
      local var52 = var3.Dictionary.join(var44, var51)
      var0.arguments = {}
      var1:InvokeCommand(var0, "QueueRichText", var0)
   end, function(arg1)
      local var0 = {}
      var0.requestId = arg1
      if var6() then
         var0.streamId = var1
      end
      var0:DisplayContent("MessageBubble", var0)
   end, function()
   end)
end
