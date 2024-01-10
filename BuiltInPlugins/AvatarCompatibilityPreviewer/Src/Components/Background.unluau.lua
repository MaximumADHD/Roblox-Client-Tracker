-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.React)
local var2 = require(var0.Src.Resources.Theme)
local var3 = require(var0.Packages.Framework).ContextServices.Stylizer
return function()
   local var154 = {}
   var154.BackgroundTransparency = 1
   var154.Image = var3:use("Background").Image
   var154.Size = UDim2.fromScale(1, 1)
   var154.ZIndex = 65535
   return var1.createElement("ImageLabel", var154)
end
