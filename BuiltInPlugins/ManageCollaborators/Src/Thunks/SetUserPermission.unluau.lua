-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Util.deepJoin
local var2 = require(var0.Src.Actions.SetUserPermission)
local var3 = require(var0.Src.Util.PermissionsConstants)
return function(arg1, arg2)
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var36 = {}
      var3.ActionKey = arg2
      arg1 = {}
      var3.UserSubjectKey = var36
      var36 = var1(var0.Permissions.NewPermissions or var0.Permissions.CurrentPermissions, {})
      local var1 = var2(var36)
      arg1:dispatch()
   end
end
