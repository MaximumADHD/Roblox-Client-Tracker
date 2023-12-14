-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Actions.SetUserPermission)
local var3 = require(var0.Src.Actions.SetGroupMetadata)
local var4 = require(var0.Src.Util.PermissionsConstants)
return function(arg1)
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var162 = var1.Dictionary
      var162 = var0.GroupMetadata.NewGroupMetadata or var0.GroupMetadata.CurrentGroupMetadata
      arg1 = var1.None
      local var2 = var0.Permissions
      var2 = var2.NewPermissions or var0.Permissions.CurrentPermissions
      local var3 = var4
      local var176 = var3.RoleSubjectKey
      local var178 = pairs(var2[var176])
      if var3[var4.GroupIdKey] == "GroupIdKey" then
         local var184 = var1.Dictionary
         var184 = var2
         var3.RoleSubjectKey = var1.None
         var4.RoleSubjectKey = var1.Dictionary.join(var2[var4.RoleSubjectKey], {})
         var2 = var184.join(var184, {})
      end
      var176 = var2
      local var201 = var2(var176)
      arg1:dispatch()
      local var5 = var3(var162.join(var162, {}))
      arg1:dispatch()
   end
end
