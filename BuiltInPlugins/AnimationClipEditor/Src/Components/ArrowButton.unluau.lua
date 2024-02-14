-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = UDim2.new(0, 9, 0, 5)
local var1 = script:FindFirstAncestor("AnimationClipEditor")
local var2 = require(var1.Packages.Framework).ContextServices
local var3 = require(var1.Packages.Roact)
local var4 = require(var1.Src.Util.Constants)
local var5 = var3.PureComponent:extend("ArrowButton")
local function fun1(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.scrollBarTheme
   local var39 = {}
   var39.Size = UDim2.new(0, var4.SCROLL_BAR_SIZE, 0, var4.SCROLL_BAR_SIZE)
   var39.Position = var0.Position
   var39.AnchorPoint = var0.AnchorPoint
   var39.AutoButtonColor = false
   var39.BackgroundColor3 = var1.controlColor
   var39.BorderColor3 = var1.borderColor
   var39.ImageTransparency = 1
   var3.Event.Activated = var0.OnActivated
   local var57 = {}
   local var61 = {}
   var61.Size = var0
   var61.Rotation = var0.Rotation
   var61.Position = UDim2.new(0.5, 0, 0.5, 0)
   var61.AnchorPoint = Vector2.new(0.5, 0.5)
   var61.Image = var1.arrowImage
   var61.ImageColor3 = var1.imageColor
   var61.BackgroundTransparency = 1
   var57.Arrow = var3.createElement("ImageLabel", var61)
   return var3.createElement("ImageButton", var39, var57)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.scrollBarTheme
   local var39 = {}
   var39.Size = UDim2.new(0, var4.SCROLL_BAR_SIZE, 0, var4.SCROLL_BAR_SIZE)
   var39.Position = var0.Position
   var39.AnchorPoint = var0.AnchorPoint
   var39.AutoButtonColor = false
   var39.BackgroundColor3 = var1.controlColor
   var39.BorderColor3 = var1.borderColor
   var39.ImageTransparency = 1
   var3.Event.Activated = var0.OnActivated
   local var57 = {}
   local var61 = {}
   var61.Size = var0
   var61.Rotation = var0.Rotation
   var61.Position = UDim2.new(0.5, 0, 0.5, 0)
   var61.AnchorPoint = Vector2.new(0.5, 0.5)
   var61.Image = var1.arrowImage
   var61.ImageColor3 = var1.imageColor
   var61.BackgroundTransparency = 1
   var57.Arrow = var3.createElement("ImageLabel", var61)
   return var3.createElement("ImageButton", var39, var57)
end

fun1 = var2.withContext
local var102 = {}
var102.Stylizer = var2.Stylizer
var5 = fun1(var102)(var5)
return var5
