-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = UDim2.new(0, 9, 0, 5)
local var1 = script:FindFirstAncestor("AnimationClipEditor")
local var2 = require(var1.Packages.Framework).ContextServices
local var3 = require(var1.Packages.Roact)
local var4 = require(var1.Src.Util.Constants)
local var5 = var3.PureComponent:extend("ArrowButton")
local function fun12(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.scrollBarTheme
   local var684 = {}
   var684.Size = UDim2.new(0, var4.SCROLL_BAR_SIZE, 0, var4.SCROLL_BAR_SIZE)
   var684.Position = var0.Position
   var684.AnchorPoint = var0.AnchorPoint
   var684.AutoButtonColor = false
   var684.BackgroundColor3 = var1.controlColor
   var684.BorderColor3 = var1.borderColor
   var684.ImageTransparency = 1
   var3.Event.Activated = var0.OnActivated
   local var701 = {}
   local var705 = {}
   var705.Size = var0
   var705.Rotation = var0.Rotation
   var705.Position = UDim2.new(0.5, 0, 0.5, 0)
   var705.AnchorPoint = Vector2.new(0.5, 0.5)
   var705.Image = var1.arrowImage
   var705.ImageColor3 = var1.imageColor
   var705.BackgroundTransparency = 1
   var701.Arrow = var3.createElement("ImageLabel", var705)
   return var3.createElement("ImageButton", var684, var701)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.scrollBarTheme
   local var684 = {}
   var684.Size = UDim2.new(0, var4.SCROLL_BAR_SIZE, 0, var4.SCROLL_BAR_SIZE)
   var684.Position = var0.Position
   var684.AnchorPoint = var0.AnchorPoint
   var684.AutoButtonColor = false
   var684.BackgroundColor3 = var1.controlColor
   var684.BorderColor3 = var1.borderColor
   var684.ImageTransparency = 1
   var3.Event.Activated = var0.OnActivated
   local var701 = {}
   local var705 = {}
   var705.Size = var0
   var705.Rotation = var0.Rotation
   var705.Position = UDim2.new(0.5, 0, 0.5, 0)
   var705.AnchorPoint = Vector2.new(0.5, 0.5)
   var705.Image = var1.arrowImage
   var705.ImageColor3 = var1.imageColor
   var705.BackgroundTransparency = 1
   var701.Arrow = var3.createElement("ImageLabel", var705)
   return var3.createElement("ImageButton", var684, var701)
end

fun12 = var2.withContext
local var722 = {}
var722.Stylizer = var2.Stylizer
var5 = fun12(var722)(var5)
return var5
