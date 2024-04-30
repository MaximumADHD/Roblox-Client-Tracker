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
   local var941 = {}
   var941.AnchorPoint = Vector2.new(0.5, 0.5)
   var941.Position = UDim2.fromScale(0.5, 0.5)
   var941.AutomaticSize = Enum.AutomaticSize.XY
   var941.BackgroundColor = var0.BackgroundColor
   var941.Padding = var0.Padding
   local var953 = {}
   local var957 = {}
   var957.CornerRadius = var0.CornerRadius
   var953.UICorner = var2.createElement("UICorner", var957)
   local var963 = {}
   var963.AutomaticSize = Enum.AutomaticSize.XY
   var963.Text = arg1.Text
   var963.TextColor = var0.TextColor
   var963.TextSize = var0.TextSize
   var963.TextWrapped = true
   var953.NoticeText = var2.createElement(var5, var963)
   return var2.createElement(var6, var941, var953)
end
