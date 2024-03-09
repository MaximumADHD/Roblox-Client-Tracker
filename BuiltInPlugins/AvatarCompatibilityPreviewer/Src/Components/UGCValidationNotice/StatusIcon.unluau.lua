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
   local var85 = {}
   var85.Position = var0.Position
   var85.Size = var0.Size
   var85.OnClick = arg1.OnClick
   local var89 = {}
   var89.UIAspectRatioConstraint = var2.createElement("UIAspectRatioConstraint")
   local var97 = {}
   var97.Image = var0.Image
   var97.ImageColor3 = var0.Color
   var89.Image = var2.createElement(var5, var97)
   local var104 = {}
   var104.Text = arg1.TooltipText
   var89.Tooltip = var2.createElement(var7, var104)
   return var2.createElement(var6, var85, var89)
end
