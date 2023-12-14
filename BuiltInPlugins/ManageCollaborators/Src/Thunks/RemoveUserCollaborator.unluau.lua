-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Actions.SetUserPermission)
local var3 = require(var0.Src.Util.PermissionsConstants)
return function(arg1, arg2)
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var1 = var0.Permissions.NewPermissions or var0.Permissions.CurrentPermissions
      local var33 = var1.Dictionary
      var33 = var1
      local var39 = var1.Dictionary
      var39 = var1[var3.UserSubjectKey]
      arg1 = var1.None
      local var45 = var39.join(var39, {})
      var3.UserSubjectKey = var45
      var45 = var33.join(var33, {})
      local var2 = var2(var45)
      arg1:dispatch()
   end
end
