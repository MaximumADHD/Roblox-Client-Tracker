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
   local var84 = {}
   var84.AnchorPoint = Vector2.new(0.5, 0.5)
   var84.Position = UDim2.fromScale(0.5, 0.5)
   var84.AutomaticSize = Enum.AutomaticSize.XY
   var84.BackgroundColor = var0.BackgroundColor
   var84.Padding = var0.Padding
   local var96 = {}
   local var100 = {}
   var100.CornerRadius = var0.CornerRadius
   var96.UICorner = var2.createElement("UICorner", var100)
   local var106 = {}
   var106.AutomaticSize = Enum.AutomaticSize.XY
   var106.Text = arg1.Text
   var106.TextColor = var0.TextColor
   var106.TextSize = var0.TextSize
   var106.TextWrapped = true
   var96.NoticeText = var2.createElement(var5, var106)
   return var2.createElement(var6, var84, var96)
end
