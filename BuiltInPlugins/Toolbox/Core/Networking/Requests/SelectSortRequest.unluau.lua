-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Types.RequestReason)
local var2 = require(var0.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var23 = {}
      var23.sortIndex = arg3
      var23.targetPage = 1
      var23.currentPage = 0
      var23.requestReason = var1.ChangeSort
      local var0 = var2(arg1, arg2, var23)
      arg1:dispatch()
   end
end
