-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Util.getAssetThumbnail)
local var3 = require(var0.Packages.Framework).UI.Image
return function(arg1)
   local var23 = {}
   var23.Image = var2(arg1.Item)
   var23.Size = UDim2.fromScale(1, 1)
   return var1.createElement(var3, var23)
end
