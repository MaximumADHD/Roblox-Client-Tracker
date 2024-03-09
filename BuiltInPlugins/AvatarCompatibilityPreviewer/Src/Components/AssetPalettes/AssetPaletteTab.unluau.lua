-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Cryo)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Packages.Framework).UI.SimpleTab
return function(arg1)
   local var318 = var1.Dictionary
   var318 = arg1
   local var320 = {}
   var320.Style = "AssetPaletteTab"
   local var0 = {}
   var0.BackgroundTransparency = 1
   var320.WrapperProps = var0
   return var2.createElement(var3, var318.join(var318, var320))
end
