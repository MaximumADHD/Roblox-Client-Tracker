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
   local var32 = {}
   var32.Position = var0.Position
   var32.Size = var0.Size
   var32.OnClick = arg1.OnClick
   local var36 = {}
   var36.UIAspectRatioConstraint = var2.createElement("UIAspectRatioConstraint")
   local var44 = {}
   var44.Image = var0.Image
   var44.ImageColor3 = var0.Color
   var36.Image = var2.createElement(var5, var44)
   local var51 = {}
   var51.Text = arg1.TooltipText
   var36.Tooltip = var2.createElement(var7, var51)
   return var2.createElement(var6, var32, var36)
end
