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
   local var94 = {}
   var94.AnchorPoint = Vector2.new(0.5, 0.5)
   var94.Position = UDim2.fromScale(0.5, 0.5)
   var94.AutomaticSize = Enum.AutomaticSize.XY
   var94.BackgroundColor = var0.BackgroundColor
   var94.Padding = var0.Padding
   local var106 = {}
   local var110 = {}
   var110.CornerRadius = var0.CornerRadius
   var106.UICorner = var2.createElement("UICorner", var110)
   local var116 = {}
   var116.AutomaticSize = Enum.AutomaticSize.XY
   var116.Text = arg1.Text
   var116.TextColor = var0.TextColor
   var116.TextSize = var0.TextSize
   var116.TextWrapped = true
   var106.NoticeText = var2.createElement(var5, var116)
   return var2.createElement(var6, var94, var106)
end
