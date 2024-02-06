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
   local var173 = {}
   var173.AnchorPoint = Vector2.new(1, 0)
   var173.LayoutOrder = arg1.LayoutOrder
   var173.Position = var0.Position
   var173.OnClick = var2.useContext(var3).resetCamera
   var173.Style = "Round"
   var173.Size = var0.Size + UDim2.fromOffset(var0.Spacing, var0.Spacing)
   var173.ZIndex = 2
   local var189 = {}
   local var193 = {}
   var193.PaddingLeft = var1
   var193.PaddingRight = var1
   var193.PaddingTop = var1
   var193.PaddingBottom = var1
   var189.Spacing = var2.createElement("UIPadding", var193)
   local var198 = {}
   var198.Image = var0.Image
   var189.Icon = var2.createElement(var6, var198)
   local var204 = {}
   var204.Text = "Reset Camera"
   var189.Tooltip = var2.createElement(var7, var204)
   return var2.createElement(var5, var173, var189)
end
