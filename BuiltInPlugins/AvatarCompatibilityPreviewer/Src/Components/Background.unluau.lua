-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Resources.Theme)
local var3 = require(var0.Packages.Framework).ContextServices.Stylizer
return function()
   local var26 = {}
   var26.BackgroundTransparency = 1
   var26.Image = var3:use("Background").Image
   var26.Size = UDim2.fromScale(1, 1)
   var26.ZIndex = 65535
   return var1.createElement("ImageLabel", var26)
end
