-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.PermissionsConstants)
return function(arg1, arg2)
   local var0 = var0
   local var22 = pairs(arg1.Permissions.NewPermissions or arg1.Permissions.CurrentPermissions[var0.RoleSubjectKey])
   if var0[var0.ActionKey] ~= var0.PlayKey then
      if var0[var0.GroupIdKey] == "NewPermissions" then
         local var0 = false
      end
   end
   if var0[var0.ActionKey] ~= var0.NoAccessKey then
      if var0[var0.GroupIdKey] == "NewPermissions" then
         local var0 = false
      end
   end
   if true then
      return var0.PlayKey
   end
   if true then
      return var0.NoAccessKey
   end
   return var0.MultipleKey
end
