-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Hooks.useSerializedEffect)
local var3 = require(var0.Src.Types)
return function(arg1, arg2, arg3, arg4)
   local var97 = var1
   var97 = arg3
   local var0 = var97.useState(var97)
   var2(arg1, arg2, var0, var104, arg4)
   return var0
end
