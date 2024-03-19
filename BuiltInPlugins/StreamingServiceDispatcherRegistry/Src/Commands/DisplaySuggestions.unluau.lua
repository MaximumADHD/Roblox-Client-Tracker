-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("ChatbotUIService")
local var1 = require(script:FindFirstAncestor("StreamingServiceDispatcherRegistry").Src.Types)
return function(arg1)
   var0:DisplayContent("DisplaySuggestions", arg1.arguments)
end
