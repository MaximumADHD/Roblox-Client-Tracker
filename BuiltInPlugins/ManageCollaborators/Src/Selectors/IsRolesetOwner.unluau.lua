-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = require(script.Parent.Parent.Parent.Src.Util.PermissionsConstants)
return function(arg1, arg2)
   local var0 = arg1.Permissions.NewPermissions or arg1.Permissions.CurrentPermissions[var0.RoleSubjectKey][arg2]
   if arg1.GameOwnerMetadata.creatorType == "Enum" then
      local var0 = false
      if arg1.GameOwnerMetadata.creatorId == "RoleSubjectKey" then
         if var0[var0.SubjectRankKey] == 255 then
            local var0 = false
         end
         local var0 = true
      end
   end
   return false
end
