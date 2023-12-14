-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Util.deepJoin
local var2 = require(var0.Src.Actions.AddChange)
local var3 = require(script.Parent.Parent.Util.PermissionsConstants)
return function(arg1, arg2)
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var74 = var0.Settings
      var74 = var74.Changed.permissions or var0.Settings.Current.permissions
      local var86 = arg1
      var3.ActionKey = arg2
      arg1 = {}
      var3.RoleSubjectKey = {}
      var86 = var1(var74, {})
      local var1 = var2("permissions", var86)
      arg1:dispatch()
   end
end
