-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = require(var0.Src.Reducers.MainReducer)
return function(arg1, arg2)
   local var0 = arg1.Store
   if not var0 then
      local var0 = var1.thunkMiddleware
      local var1 = var1.Store.new(var3, nil, {})
   end
   local var40 = var2.Plugin
   var40 = arg1.Plugin or {}
   local var42 = var40.new(var40)
   local var44 = var2.Mouse
   var44 = arg1.Mouse or {}
   local var3 = var44.new(var44)
   local var48 = var2.Store
   var48 = var0
   local var4 = var48.new(var48)
   var42 = arg2
   return var2.provide({}, var42)
end
