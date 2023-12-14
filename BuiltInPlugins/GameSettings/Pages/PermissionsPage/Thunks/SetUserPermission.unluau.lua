-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Util.deepJoin
local var2 = require(var0.Src.Actions.AddChange)
local var3 = require(script.Parent.Parent.Util.PermissionsConstants)
return function(arg1, arg2)
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var29 = var0.Settings
      var29 = var29.Changed.permissions or var0.Settings.Current.permissions
      local var41 = arg1
      var3.ActionKey = arg2
      arg1 = {}
      var3.UserSubjectKey = {}
      var41 = var1(var29, {})
      local var1 = var2("permissions", var41)
      arg1:dispatch()
   end
end
