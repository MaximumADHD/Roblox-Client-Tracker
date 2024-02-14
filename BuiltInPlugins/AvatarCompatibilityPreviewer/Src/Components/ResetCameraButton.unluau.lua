-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Util.AvatarScreenContext)
local var4 = var1.UI
local var5 = var4.Button
local var6 = var4.Image
local var7 = var4.Tooltip
local var8 = var1.ContextServices.Stylizer
local var9 = require(var0.Src.Resources.Theme)
return function(arg1)
   local var0 = var8:use("ResetCameraButton")
   local var1 = UDim.new(0, var0.Spacing)
   local var178 = {}
   var178.AnchorPoint = Vector2.new(1, 0)
   var178.LayoutOrder = arg1.LayoutOrder
   var178.Position = var0.Position
   var178.OnClick = var2.useContext(var3).resetCamera
   var178.Style = "Round"
   var178.Size = var0.Size + UDim2.fromOffset(var0.Spacing, var0.Spacing)
   var178.ZIndex = 2
   local var194 = {}
   local var198 = {}
   var198.PaddingLeft = var1
   var198.PaddingRight = var1
   var198.PaddingTop = var1
   var198.PaddingBottom = var1
   var194.Spacing = var2.createElement("UIPadding", var198)
   local var203 = {}
   var203.Image = var0.Image
   var194.Icon = var2.createElement(var6, var203)
   local var209 = {}
   var209.Text = "Reset Camera"
   var194.Tooltip = var2.createElement(var7, var209)
   return var2.createElement(var5, var178, var194)
end
