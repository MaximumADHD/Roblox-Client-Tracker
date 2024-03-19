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
   local var96 = {}
   var96.AnchorPoint = Vector2.new(0.5, 0.5)
   var96.Position = UDim2.fromScale(0.5, 0.5)
   var96.AutomaticSize = Enum.AutomaticSize.XY
   var96.BackgroundColor = var0.BackgroundColor
   var96.Padding = var0.Padding
   local var108 = {}
   local var112 = {}
   var112.CornerRadius = var0.CornerRadius
   var108.UICorner = var2.createElement("UICorner", var112)
   local var118 = {}
   var118.AutomaticSize = Enum.AutomaticSize.XY
   var118.Text = arg1.Text
   var118.TextColor = var0.TextColor
   var118.TextSize = var0.TextSize
   var118.TextWrapped = true
   var108.NoticeText = var2.createElement(var5, var118)
   return var2.createElement(var6, var96, var108)
end
