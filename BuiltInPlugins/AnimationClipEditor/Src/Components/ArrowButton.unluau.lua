-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = UDim2.new(0, 9, 0, 5)
local var1 = script:FindFirstAncestor("AnimationClipEditor")
local var2 = require(var1.Packages.Framework).ContextServices
local var3 = require(var1.Packages.Roact)
local var4 = require(var1.Src.Util.Constants)
local var5 = var3.PureComponent:extend("ArrowButton")
local function fun11(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.scrollBarTheme
   local var622 = {}
   var622.Size = UDim2.new(0, var4.SCROLL_BAR_SIZE, 0, var4.SCROLL_BAR_SIZE)
   var622.Position = var0.Position
   var622.AnchorPoint = var0.AnchorPoint
   var622.AutoButtonColor = false
   var622.BackgroundColor3 = var1.controlColor
   var622.BorderColor3 = var1.borderColor
   var622.ImageTransparency = 1
   var3.Event.Activated = var0.OnActivated
   local var639 = {}
   local var643 = {}
   var643.Size = var0
   var643.Rotation = var0.Rotation
   var643.Position = UDim2.new(0.5, 0, 0.5, 0)
   var643.AnchorPoint = Vector2.new(0.5, 0.5)
   var643.Image = var1.arrowImage
   var643.ImageColor3 = var1.imageColor
   var643.BackgroundTransparency = 1
   var639.Arrow = var3.createElement("ImageLabel", var643)
   return var3.createElement("ImageButton", var622, var639)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.scrollBarTheme
   local var622 = {}
   var622.Size = UDim2.new(0, var4.SCROLL_BAR_SIZE, 0, var4.SCROLL_BAR_SIZE)
   var622.Position = var0.Position
   var622.AnchorPoint = var0.AnchorPoint
   var622.AutoButtonColor = false
   var622.BackgroundColor3 = var1.controlColor
   var622.BorderColor3 = var1.borderColor
   var622.ImageTransparency = 1
   var3.Event.Activated = var0.OnActivated
   local var639 = {}
   local var643 = {}
   var643.Size = var0
   var643.Rotation = var0.Rotation
   var643.Position = UDim2.new(0.5, 0, 0.5, 0)
   var643.AnchorPoint = Vector2.new(0.5, 0.5)
   var643.Image = var1.arrowImage
   var643.ImageColor3 = var1.imageColor
   var643.BackgroundTransparency = 1
   var639.Arrow = var3.createElement("ImageLabel", var643)
   return var3.createElement("ImageButton", var622, var639)
end

fun11 = var2.withContext
local var660 = {}
var660.Stylizer = var2.Stylizer
var5 = fun11(var660)(var5)
return var5
