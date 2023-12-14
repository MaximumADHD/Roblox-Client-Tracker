-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Util.deepJoin
local var2 = require(var0.Src.Actions.AddChange)
local var3 = require(script.Parent.Parent.Util.PermissionsConstants)
return function(arg1, arg2, arg3)
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var108 = var0.Settings
      var108 = var108.Changed.permissions or var0.Settings.Current.permissions
      local var120 = arg1
      var3.SubjectNameKey = arg2
      var3.SubjectIdKey = arg1
      var3.ActionKey = arg3
      arg1 = {}
      var3.UserSubjectKey = {}
      var120 = var1(var108, {})
      local var1 = var2("permissions", var120)
      arg1:dispatch()
   end
end
