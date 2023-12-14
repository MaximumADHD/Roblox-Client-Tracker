-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("TerrainEditor")
local var1 = require(var0.Packages.React)
local var2 = var1.useEffect
local var3 = var1.useState
local var4 = require(var0.Src.Hooks.useTerrain)
local var5 = require(var0.Src.Types)
local var6 = var5.Categories
local var7 = var5.Tools
local var8 = var5.TransformMode
local var9 = var5.TransformSettings
local var10 = game:GetService("CoreGui")
return function(arg1, arg2, arg3, arg4)
   local var0 = var4()
   local var1 = arg1
   local var2 = arg3
   local var3 = arg4
   var2(function()
      arg4.Parent = nil
   end, {})
   return var3({})
end
