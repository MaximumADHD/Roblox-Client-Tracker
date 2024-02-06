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
   local var89 = {}
   var89.AnchorPoint = Vector2.new(0.5, 0.5)
   var89.Position = UDim2.fromScale(0.5, 0.5)
   var89.AutomaticSize = Enum.AutomaticSize.XY
   var89.BackgroundColor = var0.BackgroundColor
   var89.Padding = var0.Padding
   local var101 = {}
   local var105 = {}
   var105.CornerRadius = var0.CornerRadius
   var101.UICorner = var2.createElement("UICorner", var105)
   local var111 = {}
   var111.AutomaticSize = Enum.AutomaticSize.XY
   var111.Text = arg1.Text
   var111.TextColor = var0.TextColor
   var111.TextSize = var0.TextSize
   var111.TextWrapped = true
   var101.NoticeText = var2.createElement(var5, var111)
   return var2.createElement(var6, var89, var101)
end
