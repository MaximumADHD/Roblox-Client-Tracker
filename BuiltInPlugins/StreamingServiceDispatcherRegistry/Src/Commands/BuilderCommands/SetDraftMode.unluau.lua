-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("StreamingServiceDispatcherRegistry")
local var1 = require(var0.Src.Utils.Utils)
local var2 = require(var0.Src.Types)
local var3 = require(var0.Src.Commands.BuilderCommands.BuilderNameMap)
return function(arg1)
   local var0 = arg1.arguments
   local var1 = true
   if var0.enabled == 1 then
      if var0.enabled == "enabled" then
         local var0 = false
      end
      local var0 = true
   end
   if var1 then
      var3.activeDraftGuids = {}
      var1.enableDraftMode(arg1.requestId)
   end
   var3.activeDraftGuids = nil
   var1.disableDraftMode(arg1.requestId)
end
