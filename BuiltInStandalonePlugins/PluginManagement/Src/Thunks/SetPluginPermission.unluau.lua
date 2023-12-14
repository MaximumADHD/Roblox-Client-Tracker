-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Thunks.GetAllPluginPermissions)
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      local var0 = {}
      var0.Type = arg4.type
      local var23 = {}
      var23.Allowed = arg4.allowed
      local var29 = arg4.data.domain
      var23.Domain = var29
      var0.Data = var23
      arg4.index = var0
      var29 = arg1:GetPermissions(arg3)
      arg1:SetPermissions(arg3, var29)
      local var2 = var0(arg1, arg2)
      arg1:dispatch()
   end
end
