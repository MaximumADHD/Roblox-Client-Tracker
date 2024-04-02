-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.CliAdapter).GetService("ChatbotUIService")
local var2 = require(var0.Src.Types)
return function(arg1)
   var1:DisplayContent("DisplaySuggestions", arg1.arguments)
end
