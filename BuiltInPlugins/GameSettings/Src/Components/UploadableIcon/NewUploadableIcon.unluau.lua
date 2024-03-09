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
   local var569 = {}
   var569.Visible = var0.Visible
   var569.BorderSizePixel = 0
   var569.BackgroundColor3 = var1.newThumbnail.background
   var569.ImageColor3 = var1.newThumbnail.border
   var569.Image = var1.dottedBorder.square.image
   var569.ResampleMode = Enum.ResamplerMode.Pixelated
   var569.ScaleType = Enum.ScaleType.Slice
   var569.SliceCenter = var1.dottedBorder.sliceCenter
   var569.Size = UDim2.new(0, 150, 0, 150)
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var1.Event.Activated = arg1.props.OnClick
   local var601 = {}
   local var605 = {}
   var605.BackgroundTransparency = 1
   var605.Image = var1.plus.image
   var605.ImageColor3 = var1.newThumbnail.plus
   var605.ImageTransparency = 0.4
   var605.ImageRectSize = var1.plus.rectSize
   var605.ImageRectOffset = var1.plus.rectOffset
   var605.Size = UDim2.new(0, 24, 0, 24)
   var605.Position = UDim2.new(0.5, 0, 0.5, 0)
   var605.AnchorPoint = Vector2.new(0.5, 0.5)
   var605.ZIndex = 2
   var601.Plus = var1.createElement("ImageLabel", var605)
   return var1.createElement("ImageButton", var569, var601)
end

function var3.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer
   local var569 = {}
   var569.Visible = var0.Visible
   var569.BorderSizePixel = 0
   var569.BackgroundColor3 = var1.newThumbnail.background
   var569.ImageColor3 = var1.newThumbnail.border
   var569.Image = var1.dottedBorder.square.image
   var569.ResampleMode = Enum.ResamplerMode.Pixelated
   var569.ScaleType = Enum.ScaleType.Slice
   var569.SliceCenter = var1.dottedBorder.sliceCenter
   var569.Size = UDim2.new(0, 150, 0, 150)
   var1.Event.MouseEnter = arg1.mouseEnter
   var1.Event.MouseLeave = arg1.mouseLeave
   var1.Event.Activated = arg1.props.OnClick
   local var601 = {}
   local var605 = {}
   var605.BackgroundTransparency = 1
   var605.Image = var1.plus.image
   var605.ImageColor3 = var1.newThumbnail.plus
   var605.ImageTransparency = 0.4
   var605.ImageRectSize = var1.plus.rectSize
   var605.ImageRectOffset = var1.plus.rectOffset
   var605.Size = UDim2.new(0, 24, 0, 24)
   var605.Position = UDim2.new(0.5, 0, 0.5, 0)
   var605.AnchorPoint = Vector2.new(0.5, 0.5)
   var605.ZIndex = 2
   var601.Plus = var1.createElement("ImageLabel", var605)
   return var1.createElement("ImageButton", var569, var601)
end

fun8 = var2.withContext
local var635 = {}
var635.Stylizer = var2.Stylizer
var635.Mouse = var2.Mouse
var3 = fun8(var635)(var3)
return var3
