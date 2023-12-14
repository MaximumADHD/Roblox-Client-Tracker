-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.PermissionsConstants)
return function(arg1, arg2)
   return arg1.Permissions.NewPermissions or arg1.Permissions.CurrentPermissions[var0.RoleSubjectKey][arg2][var0.ActionKey]
end
