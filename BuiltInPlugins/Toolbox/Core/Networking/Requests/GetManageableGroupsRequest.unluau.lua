-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("Toolbox")
local var1 = require(var0.Core.Actions.SetManageableGroups)
local var2 = require(var0.Core.Actions.NetworkError)
local var3 = require(var0.Core.Types.GroupTypes)
return function(arg1)
   return function(arg1)
      local var0 = var1(arg1.responseBody.data)
      arg1:dispatch()
   end
end
