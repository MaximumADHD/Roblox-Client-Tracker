-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("MaterialGenerator")
local var1 = require(var0.Packages.Dash)
local var2 = require(var0.Src.Types)
return function(arg1)
   local var15 = var1
   var15 = arg1
   return var1.flat(var15.map(var15, function(arg1)
      return arg1.materialVariants
   end))
end
