-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ChatbotUIService")
local var1 = game:GetService("StreamingService")
local var2 = script.Parent.Parent.Parent
local var3 = require(var2.Packages.Cryo)
local var4 = require(var2.Src.Types)
local var5 = require(var2.Src.Cache.StreamCache)
local var6 = game:GetFastFlag("CAPAddStreamIdToRichTextContent")
return function(arg1)
   local var0 = arg1.requestId
   local var1 = arg1.arguments.text.streamId
   local var64 = var5
   var64 = var0
   var64.requestStreamSubscription(var64, var1, true, function(arg1)
      if arg1.isFinal then
      end
      local var0 = {}
      var0.requestId = var0
      local var1 = "StreamText"
      local var43 = {}
      var43.requestId = var0
      if var6 then
         local var0 = var1 or nil
      end
      local var49 = nil
      var43.streamId = var49
      var49 = arg1
      local var50 = var3.Dictionary.join(var43, var49)
      var0.arguments = {}
      var1:InvokeCommand(var0, "QueueRichText", var0)
   end, function(arg1)
      local var0 = {}
      var0.requestId = arg1
      if var6 then
         var0.streamId = var1
      end
      var0:DisplayContent("MessageBubble", var0)
   end, function()
   end)
end
