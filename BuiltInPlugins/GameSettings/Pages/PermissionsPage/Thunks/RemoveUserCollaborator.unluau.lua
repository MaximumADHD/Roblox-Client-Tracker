-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Src.Actions.AddChange)
local var3 = require(script.Parent.Parent.Util.PermissionsConstants)
return function(arg1, arg2)
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var1 = var0.Settings.Changed.permissions or var0.Settings.Current.permissions
      local var38 = var1.Dictionary
      var38 = var1
      local var44 = var1.Dictionary
      var44 = var1[var3.UserSubjectKey]
      arg1 = var1.None
      var3.UserSubjectKey = var44.join(var44, {})
      local var2 = var2("permissions", var38.join(var38, {}))
      arg1:dispatch()
   end
end
