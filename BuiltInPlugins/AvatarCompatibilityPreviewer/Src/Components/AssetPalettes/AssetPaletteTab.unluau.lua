-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Packages.Framework).UI.SimpleTab
return function(arg1)
   local var335 = var1.Dictionary
   var335 = arg1
   local var337 = {}
   var337.Style = "AssetPaletteTab"
   local var0 = {}
   var0.BackgroundTransparency = 1
   var337.WrapperProps = var0
   return var2.createElement(var3, var335.join(var335, var337))
end
