-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Core.Networking.Requests.UpdatePageInfoAndSendRequest)
local var2 = require(var0.Core.Actions.SetToolboxManageableGroups)
local var3 = require(var0.Core.Actions.NetworkError)
return function(arg1, arg2, arg3)
   return function(arg1)
      local var0 = var2(arg1.responseBody.data)
      arg1:dispatch()
      if arg3 then
         local var0 = var1(arg2, var3, arg3)
         arg1:dispatch()
      end
   end
end
