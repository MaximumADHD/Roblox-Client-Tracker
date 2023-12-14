-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Framework).Util.deepJoin
local var2 = require(var0.Src.Actions.AddErrors)
return function(arg1, arg2, arg3)
   return function(arg1, arg2)
      local var23 = arg1:getState().Settings
      var23 = var23.Errors.DeveloperSubscriptions or {}
      arg2 = arg3
      arg1 = {}
      local var36 = {}
      var36.DeveloperSubscriptions = var1(var23, {})
      local var0 = var2(var36)
      arg1:dispatch()
   end
end
