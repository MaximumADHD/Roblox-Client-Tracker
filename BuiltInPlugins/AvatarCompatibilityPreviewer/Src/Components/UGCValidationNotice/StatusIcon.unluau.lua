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
   local var90 = {}
   var90.Position = var0.Position
   var90.Size = var0.Size
   var90.OnClick = arg1.OnClick
   local var94 = {}
   var94.UIAspectRatioConstraint = var2.createElement("UIAspectRatioConstraint")
   local var102 = {}
   var102.Image = var0.Image
   var102.ImageColor3 = var0.Color
   var94.Image = var2.createElement(var5, var102)
   local var109 = {}
   var109.Text = arg1.TooltipText
   var94.Tooltip = var2.createElement(var7, var109)
   return var2.createElement(var6, var90, var94)
end
