-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Util.deepJoin
local var2 = require(var0.Src.Actions.AddChange)
return function(arg1, arg2, arg3)
   return function(arg1, arg2)
      local var0 = arg1:getState()
      local var23 = var0.Settings
      var23 = var23.Changed.DeveloperSubscriptions or var0.Settings.Current.DeveloperSubscriptions
      local var34 = arg2
      arg2 = arg3
      arg1 = {}
      var34 = var1(var23, {})
      local var1 = var2("DeveloperSubscriptions", var34)
      arg1:dispatch()
   end
end
