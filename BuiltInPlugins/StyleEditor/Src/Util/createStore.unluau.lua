-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Src.Reducers.RootReducer)
return function()
   local var20 = var1.thunkMiddleware
   return var1.Store.new(var2, nil, {}, nil)
end
