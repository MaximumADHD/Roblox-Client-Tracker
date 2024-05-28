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
   local var127 = {}
   var127.Position = var0.Position
   var127.Size = var0.Size
   var127.OnClick = arg1.OnClick
   local var131 = {}
   var131.UIAspectRatioConstraint = var2.createElement("UIAspectRatioConstraint")
   local var139 = {}
   var139.Image = var0.Image
   var139.ImageColor3 = var0.Color
   var131.Image = var2.createElement(var5, var139)
   local var146 = {}
   var146.Text = arg1.TooltipText
   var131.Tooltip = var2.createElement(var7, var146)
   return var2.createElement(var6, var127, var131)
end
