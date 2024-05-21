-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Thunks.GetAllPluginPermissions)
return function(arg1, arg2, arg3, arg4)
   return function(arg1)
      local var0 = tostring(arg3)
      local var1 = {}
      var1.Type = arg4.type
      local var26 = {}
      var26.Allowed = arg4.allowed
      local var32 = arg4.data.domain
      var26.Domain = var32
      var1.Data = var26
      arg4.index = var1
      var26 = var0
      var32 = arg1:GetPermissions(var0)
      arg1:SetPermissions(var26, var32)
      local var3 = var0(arg1, arg2)
      arg1:dispatch()
   end
end
