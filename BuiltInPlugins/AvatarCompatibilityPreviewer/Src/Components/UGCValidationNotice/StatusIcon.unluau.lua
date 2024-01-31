-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Resources.Theme)
local var4 = var1.UI
local var5 = var4.Image
local var6 = var4.Pane
local var7 = var4.Tooltip
local var8 = var1.ContextServices.Stylizer
return function(arg1)
   local var0 = var8:use("UGCValidationStatusIcon", arg1)
   local var80 = {}
   var80.Position = var0.Position
   var80.Size = var0.Size
   var80.OnClick = arg1.OnClick
   local var84 = {}
   var84.UIAspectRatioConstraint = var2.createElement("UIAspectRatioConstraint")
   local var92 = {}
   var92.Image = var0.Image
   var92.ImageColor3 = var0.Color
   var84.Image = var2.createElement(var5, var92)
   local var99 = {}
   var99.Text = arg1.TooltipText
   var84.Tooltip = var2.createElement(var7, var99)
   return var2.createElement(var6, var80, var84)
end
