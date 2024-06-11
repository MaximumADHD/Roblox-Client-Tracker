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
   local var219 = {}
   var219.AnchorPoint = Vector2.new(0.5, 0.5)
   var219.Position = UDim2.fromScale(0.5, 0.5)
   var219.AutomaticSize = Enum.AutomaticSize.XY
   var219.BackgroundColor = var0.BackgroundColor
   var219.Padding = var0.Padding
   local var231 = {}
   local var235 = {}
   var235.CornerRadius = var0.CornerRadius
   var231.UICorner = var2.createElement("UICorner", var235)
   local var241 = {}
   var241.AutomaticSize = Enum.AutomaticSize.XY
   var241.Text = arg1.Text
   var241.TextColor = var0.TextColor
   var241.TextSize = var0.TextSize
   var241.TextWrapped = true
   var231.NoticeText = var2.createElement(var5, var241)
   return var2.createElement(var6, var219, var231)
end
