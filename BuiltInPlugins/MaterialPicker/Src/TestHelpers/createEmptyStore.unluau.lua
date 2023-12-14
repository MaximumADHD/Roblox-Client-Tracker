-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Src.Reducers.MainReducer)
return function()
   local var0 = var1.thunkMiddleware
   return var1.Store.new(var2, nil, {})
end
