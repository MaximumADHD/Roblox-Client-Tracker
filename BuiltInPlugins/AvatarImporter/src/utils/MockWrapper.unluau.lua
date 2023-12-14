-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.RoactRodux)
return function(arg1)
   local var18 = {}
   var18.store = arg1.store
   return var1.createElement(var2.StoreProvider, var18, arg1[var1.Children])
end
