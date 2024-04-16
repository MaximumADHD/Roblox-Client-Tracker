-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AvatarCompatibilityPreviewer")
local var1 = require(var0.Packages.Framework)
local var2 = require(var0.Packages.React)
local var3 = require(var0.Src.Resources.Theme)
local var4 = var1.UI
local var5 = var4.TextLabel
local var6 = var4.Pane
local var7 = var1.ContextServices.Stylizer
return function(arg1)
   local var0 = var7:use("Notice")
   local var842 = {}
   var842.AnchorPoint = Vector2.new(0.5, 0.5)
   var842.Position = UDim2.fromScale(0.5, 0.5)
   var842.AutomaticSize = Enum.AutomaticSize.XY
   var842.BackgroundColor = var0.BackgroundColor
   var842.Padding = var0.Padding
   local var854 = {}
   local var858 = {}
   var858.CornerRadius = var0.CornerRadius
   var854.UICorner = var2.createElement("UICorner", var858)
   local var864 = {}
   var864.AutomaticSize = Enum.AutomaticSize.XY
   var864.Text = arg1.Text
   var864.TextColor = var0.TextColor
   var864.TextSize = var0.TextSize
   var864.TextWrapped = true
   var854.NoticeText = var2.createElement(var5, var864)
   return var2.createElement(var6, var842, var854)
end
