-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Types.RequestReason)
local var2 = require(var0.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
return function(arg1, arg2)
   return function(arg1)
      local var0 = arg1:getState().assets
      local var1 = var0.isLoading
      if not var1 then
         if var0.hasReachedBottom then
         end
      end
      local var27 = arg1:getState().pageInfo.currentPage
      local var31 = {}
      var31.targetPage = var1 + 1
      var31.requestReason = var1.NextPage
      local var2 = var2(arg1, arg2, var31)
      arg1:dispatch()
   end
end
