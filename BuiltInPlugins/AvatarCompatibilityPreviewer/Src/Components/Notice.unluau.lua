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
   local var696 = {}
   var696.AnchorPoint = Vector2.new(0.5, 0.5)
   var696.Position = UDim2.fromScale(0.5, 0.5)
   var696.AutomaticSize = Enum.AutomaticSize.XY
   var696.BackgroundColor = var0.BackgroundColor
   var696.Padding = var0.Padding
   local var708 = {}
   local var712 = {}
   var712.CornerRadius = var0.CornerRadius
   var708.UICorner = var2.createElement("UICorner", var712)
   local var718 = {}
   var718.AutomaticSize = Enum.AutomaticSize.XY
   var718.Text = arg1.Text
   var718.TextColor = var0.TextColor
   var718.TextSize = var0.TextSize
   var718.TextWrapped = true
   var708.NoticeText = var2.createElement(var5, var718)
   return var2.createElement(var6, var696, var708)
end
