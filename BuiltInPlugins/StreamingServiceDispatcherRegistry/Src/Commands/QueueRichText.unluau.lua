-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.CliAdapter)
local var2 = var1.GetService("ChatbotUIService")
local var3 = var1.GetService("StreamingService")
local var4 = require(var0.Src.Types)
local var5 = require(var0.Src.Flags.getFFlagConvAIStreamableCommands)
return function(arg1)
   if var5() then
      local var0 = unpack(arg1.arguments)
      if var0 == "DisplayContent" then
         var2:DisplayContent(var31, var32)
      end
      var3:ExecuteCommandAsync(arg1.requestId, var0, var37)
   end
   local var0 = unpack(arg1.arguments)
   var2:DisplayContent()
end
