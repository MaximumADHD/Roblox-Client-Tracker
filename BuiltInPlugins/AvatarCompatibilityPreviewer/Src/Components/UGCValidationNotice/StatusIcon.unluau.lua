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
   local var132 = {}
   var132.Position = var0.Position
   var132.Size = var0.Size
   var132.OnClick = arg1.OnClick
   local var136 = {}
   var136.UIAspectRatioConstraint = var2.createElement("UIAspectRatioConstraint")
   local var144 = {}
   var144.Image = var0.Image
   var144.ImageColor3 = var0.Color
   var136.Image = var2.createElement(var5, var144)
   local var151 = {}
   var151.Text = arg1.TooltipText
   var136.Tooltip = var2.createElement(var7, var151)
   return var2.createElement(var6, var132, var136)
end
