-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.CliAdapter).GetService("ChatbotUIService")
local var2 = require(var0.Src.Types)
return function(arg1)
   local var0 = unpack(arg1.arguments)
   var1:DisplayContent()
end
