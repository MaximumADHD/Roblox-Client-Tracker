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
   local var91 = {}
   var91.AnchorPoint = Vector2.new(0.5, 0.5)
   var91.Position = UDim2.fromScale(0.5, 0.5)
   var91.AutomaticSize = Enum.AutomaticSize.XY
   var91.BackgroundColor = var0.BackgroundColor
   var91.Padding = var0.Padding
   local var103 = {}
   local var107 = {}
   var107.CornerRadius = var0.CornerRadius
   var103.UICorner = var2.createElement("UICorner", var107)
   local var113 = {}
   var113.AutomaticSize = Enum.AutomaticSize.XY
   var113.Text = arg1.Text
   var113.TextColor = var0.TextColor
   var113.TextSize = var0.TextSize
   var113.TextWrapped = true
   var103.NoticeText = var2.createElement(var5, var113)
   return var2.createElement(var6, var91, var103)
end
