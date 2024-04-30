-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Hooks.useSerializedEffect)
local var3 = require(var0.Src.Types)
return function(arg1, arg2, arg3, arg4)
   local var128 = var1
   var128 = arg3
   local var0 = var128.useState(var128)
   var2(arg1, arg2, var0, var135, arg4)
   return var0
end
