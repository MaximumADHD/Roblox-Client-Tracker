-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Resources.Theme)
local var3 = require(var0.Packages.Framework).ContextServices.Stylizer
return function()
   local var201 = {}
   var201.BackgroundTransparency = 1
   var201.Image = var3:use("Background").Image
   var201.Size = UDim2.fromScale(1, 1)
   var201.ZIndex = 65535
   return var1.createElement("ImageLabel", var201)
end
