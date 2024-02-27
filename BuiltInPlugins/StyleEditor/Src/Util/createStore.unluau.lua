-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Packages.Framework).Util.ThunkWithArgsMiddleware
local var3 = require(var0.Src.Reducers.RootReducer)
local var4 = require(var0.Src.Thunks.Types)
return function(arg1)
   local var34 = var2(arg1)
   return var1.Store.new(var3, nil, {}, nil)
end
