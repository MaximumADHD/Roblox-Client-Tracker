-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = game:GetService("HttpService")
local var1 = require(script.Parent.Parent.Parent.Core.Actions.SetGroupRoleInfo)
return function(arg1, arg2)
   return function(arg1)
      local var0 = var0(arg1:JSONDecode(arg1.responseBody).roles)
      arg2:dispatch()
   end
end
