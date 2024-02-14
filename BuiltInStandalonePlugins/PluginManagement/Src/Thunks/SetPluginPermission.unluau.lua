-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Thunks.GetAllPluginPermissions)
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      local var0 = {}
      var0.Type = arg4.type
      local var76 = {}
      var76.Allowed = arg4.allowed
      local var82 = arg4.data.domain
      var76.Domain = var82
      var0.Data = var76
      arg4.index = var0
      var82 = arg1:GetPermissions(arg3)
      arg1:SetPermissions(arg3, var82)
      local var2 = var0(arg1, arg2)
      arg1:dispatch()
   end
end
