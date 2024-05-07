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
   local var805 = {}
   var805.AnchorPoint = Vector2.new(0.5, 0.5)
   var805.Position = UDim2.fromScale(0.5, 0.5)
   var805.AutomaticSize = Enum.AutomaticSize.XY
   var805.BackgroundColor = var0.BackgroundColor
   var805.Padding = var0.Padding
   local var817 = {}
   local var821 = {}
   var821.CornerRadius = var0.CornerRadius
   var817.UICorner = var2.createElement("UICorner", var821)
   local var827 = {}
   var827.AutomaticSize = Enum.AutomaticSize.XY
   var827.Text = arg1.Text
   var827.TextColor = var0.TextColor
   var827.TextSize = var0.TextSize
   var827.TextWrapped = true
   var817.NoticeText = var2.createElement(var5, var827)
   return var2.createElement(var6, var805, var817)
end
