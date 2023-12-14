-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var1.PureComponent:extend("HueSaturationPicker")
function var4.init(arg1)
   local var23 = {}
   var23.MouseDown = false
   arg1:setState(var23)
   function arg1.onMouseDown(arg1)
      local var28 = {}
      var28.MouseDown = true
      arg1:setState(var28)
   end
   
   function arg1.onInputChanged(arg1, arg2)
      if arg1.state.MouseDown then
         if arg2.UserInputType == "Enum" then
            local var0 = (Vector2.new(arg2.Position.X, arg2.Position.Y) - arg1.AbsolutePosition) / arg1.AbsoluteSize
            arg1.props.OnHueSaturationChanged(var0.x, 1 - var0.y)
         end
      end
   end
   
   function arg1.onInputEnded(arg1, arg2)
      if arg2.UserInputType == Enum.UserInputType.MouseButton1 then
         if arg1.state.MouseDown then
            local var0 = (Vector2.new(arg2.Position.X, arg2.Position.Y) - arg1.AbsolutePosition) / arg1.AbsoluteSize
            var0 = Vector2.new(math.clamp(var0.x, 0, 1), math.clamp(var0.y, 0, 1))
            local var87 = {}
            var87.MouseDown = false
            arg1:setState(var87)
            arg1.props.OnHueSaturationChanged(var0.x, 1 - var0.y)
         end
      end
   end
   
end

local function fun4(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.HueSaturationPicker
   local var104 = {}
   var104.LayoutOrder = var0.LayoutOrder
   var104.Size = var1.Size
   var104.Image = var1.GradientImage
   var104.BackgroundColor3 = var1.Black
   var104.AutoButtonColor = false
   var104.ImageTransparency = 1 - var0.Value
   var1.Event.MouseButton1Down = arg1.onMouseDown
   var1.Event.InputEnded = arg1.onInputEnded
   var1.Event.InputChanged = arg1.onInputChanged
   local var125 = {}
   local var129 = {}
   var129.Size = var1.PositionIndicatorSize
   var129.BackgroundTransparency = 1
   var129.Position = UDim2.fromScale(var0.Hue, 1 - var0.Saturation)
   var129.AnchorPoint = var1.PositionIndicatorAnchor
   var129.Image = var1.PositionIndicatorImage
   var129.ImageColor3 = var1.Black
   var125.PositionIndicator = var1.createElement("ImageLabel", var129)
   return var1.createElement("ImageButton", var104, var125)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.HueSaturationPicker
   local var104 = {}
   var104.LayoutOrder = var0.LayoutOrder
   var104.Size = var1.Size
   var104.Image = var1.GradientImage
   var104.BackgroundColor3 = var1.Black
   var104.AutoButtonColor = false
   var104.ImageTransparency = 1 - var0.Value
   var1.Event.MouseButton1Down = arg1.onMouseDown
   var1.Event.InputEnded = arg1.onInputEnded
   var1.Event.InputChanged = arg1.onInputChanged
   local var125 = {}
   local var129 = {}
   var129.Size = var1.PositionIndicatorSize
   var129.BackgroundTransparency = 1
   var129.Position = UDim2.fromScale(var0.Hue, 1 - var0.Saturation)
   var129.AnchorPoint = var1.PositionIndicatorAnchor
   var129.Image = var1.PositionIndicatorImage
   var129.ImageColor3 = var1.Black
   var125.PositionIndicator = var1.createElement("ImageLabel", var129)
   return var1.createElement("ImageButton", var104, var125)
end

fun4 = var3.withContext
local var143 = {}
var143.Analytics = var3.Analytics
var143.Stylizer = var2.Style.Stylizer
var4 = fun4(var143)(var4)
return var4
