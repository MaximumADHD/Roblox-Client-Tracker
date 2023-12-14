-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Actions.AddChange)
local var3 = require(script.Parent.Parent.Util.PermissionsConstants)
return function(arg1)
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var34 = var1.Dictionary
      var34 = var0.Settings.Changed.groupMetadata or var0.Settings.Current.groupMetadata
      arg1 = var1.None
      local var2 = var0.Settings.Changed
      var2 = var2.permissions or var0.Settings.Current.permissions
      local var49 = var3
      local var50 = var49.RoleSubjectKey
      local var52 = pairs(var2[var50])
      if var49[var3.GroupIdKey] == "dispatch" then
         local var58 = var1.Dictionary
         var58 = var2
         var49.RoleSubjectKey = var1.None
         var3.RoleSubjectKey = var1.Dictionary.join(var2[var3.RoleSubjectKey], {})
         var2 = var58.join(var58, {})
      end
      var49 = var2
      local var76 = var2("permissions", var49)
      arg1:dispatch()
      local var4 = var2("groupMetadata", var34.join(var34, {}))
      arg1:dispatch()
   end
end
