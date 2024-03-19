-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent
local var1 = require(var0.Packages.Rodux)
local var2 = require(var0.Src.Hooks.useStore)
return function()
   local var0 = var2()
   return function(arg1)
      var0:dispatch(arg1)
   end
end
