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
   local var156 = {}
   var156.AnchorPoint = Vector2.new(1, 0)
   var156.LayoutOrder = arg1.LayoutOrder
   var156.Position = var0.Position
   var156.OnClick = var2.useContext(var3).resetCamera
   var156.Style = "Round"
   var156.Size = var0.Size + UDim2.fromOffset(var0.Spacing, var0.Spacing)
   var156.ZIndex = 2
   local var172 = {}
   local var176 = {}
   var176.PaddingLeft = var1
   var176.PaddingRight = var1
   var176.PaddingTop = var1
   var176.PaddingBottom = var1
   var172.Spacing = var2.createElement("UIPadding", var176)
   local var181 = {}
   var181.Image = var0.Image
   var172.Icon = var2.createElement(var6, var181)
   local var187 = {}
   var187.Text = "Reset Camera"
   var172.Tooltip = var2.createElement(var7, var187)
   return var2.createElement(var5, var156, var172)
end
