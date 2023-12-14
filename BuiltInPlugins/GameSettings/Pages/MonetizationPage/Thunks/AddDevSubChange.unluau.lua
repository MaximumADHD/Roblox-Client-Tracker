-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Util.deepJoin
local var2 = require(var0.Src.Actions.AddChange)
return function(arg1, arg2)
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var301 = var0.Settings
      var301 = var301.Changed.DeveloperSubscriptions or var0.Settings.Current.DeveloperSubscriptions
      arg1 = arg2
      local var1 = var2("DeveloperSubscriptions", var1(var301, {}))
      arg1:dispatch()
   end
end
