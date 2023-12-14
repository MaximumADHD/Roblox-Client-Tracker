-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework).ContextServices
local var3 = var1.PureComponent:extend("NewUploadableIcon")
function var3.init(arg1)
   function arg1.mouseEnter()
      arg1:mouseHoverChanged(true)
   end
   
   function arg1.mouseLeave()
      arg1:mouseHoverChanged(false)
   end
   
end

function var3.mouseHoverChanged(arg1, arg2)
   local var0 = arg1.props
   if arg2 then
      var0.Mouse:__pushCursor("PointingHand")
   end
   var0.Mouse:__resetCursor()
end

local function fun8(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var567 = {}
   var567.Visible = var0.Visible
   var567.BorderSizePixel = 0
   var567.BackgroundColor3 = var1.newThumbnail.background
   var567.ImageColor3 = var1.newThumbnail.border
   var567.Image = var1.dottedBorder.square.image
   var567.ResampleMode = Enum.ResamplerMode.Pixelated
   var567.ScaleType = Enum.ScaleType.Slice
   var567.SliceCenter = var1.dottedBorder.sliceCenter
   var567.Size = UDim2.new(0, 150, 0, 150)
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var1.Event.Activated = arg1.props.OnClick
   local var599 = {}
   local var603 = {}
   var603.BackgroundTransparency = 1
   var603.Image = var1.plus.image
   var603.ImageColor3 = var1.newThumbnail.plus
   var603.ImageTransparency = 0.4
   var603.ImageRectSize = var1.plus.rectSize
   var603.ImageRectOffset = var1.plus.rectOffset
   var603.Size = UDim2.new(0, 24, 0, 24)
   var603.Position = UDim2.new(0.5, 0, 0.5, 0)
   var603.AnchorPoint = Vector2.new(0.5, 0.5)
   var603.ZIndex = 2
   var599.Plus = var1.createElement("ImageLabel", var603)
   return var1.createElement("ImageButton", var567, var599)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var567 = {}
   var567.Visible = var0.Visible
   var567.BorderSizePixel = 0
   var567.BackgroundColor3 = var1.newThumbnail.background
   var567.ImageColor3 = var1.newThumbnail.border
   var567.Image = var1.dottedBorder.square.image
   var567.ResampleMode = Enum.ResamplerMode.Pixelated
   var567.ScaleType = Enum.ScaleType.Slice
   var567.SliceCenter = var1.dottedBorder.sliceCenter
   var567.Size = UDim2.new(0, 150, 0, 150)
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var1.Event.Activated = arg1.props.OnClick
   local var599 = {}
   local var603 = {}
   var603.BackgroundTransparency = 1
   var603.Image = var1.plus.image
   var603.ImageColor3 = var1.newThumbnail.plus
   var603.ImageTransparency = 0.4
   var603.ImageRectSize = var1.plus.rectSize
   var603.ImageRectOffset = var1.plus.rectOffset
   var603.Size = UDim2.new(0, 24, 0, 24)
   var603.Position = UDim2.new(0.5, 0, 0.5, 0)
   var603.AnchorPoint = Vector2.new(0.5, 0.5)
   var603.ZIndex = 2
   var599.Plus = var1.createElement("ImageLabel", var603)
   return var1.createElement("ImageButton", var567, var599)
end

fun8 = var2.withContext
local var633 = {}
var633.Stylizer = var2.Stylizer
var633.Mouse = var2.Mouse
var3 = fun8(var633)(var3)
return var3
