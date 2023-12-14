-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script.Parent.Parent.Parent.Parent
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var1.PureComponent:extend("ColorValueSlider")
function var4.init(arg1)
   local var28 = {}
   var28.mouseDown = false
   arg1.state = var28
   arg1._rootRef = var1.createRef()
   function arg1.onMouseDown(arg1, arg2, arg3)
      local var37 = {}
      var37.MouseDown = true
      arg1:setState(var37)
   end
   
   function arg1.onInputChanged(arg1, arg2)
      if arg1.state.MouseDown then
         if arg2.UserInputType == "Enum" then
            arg1.props.updatePosition(arg1:xToAlpha(arg2.Position.X))
         end
      end
   end
   
   function arg1.onInputEnded(arg1, arg2)
      if arg2.UserInputType == Enum.UserInputType.MouseButton1 then
         if arg1.state.MouseDown then
            local var63 = {}
            var63.MouseDown = false
            arg1:setState(var63)
            arg1.props.updatePosition(arg1:xToAlpha(arg2.Position.X))
         end
      end
   end
   
end

function var4.xToAlpha(arg1, arg2)
   local var0 = arg1._rootRef.current
   return math.clamp((arg2 - var0.AbsolutePosition.X) / var0.AbsoluteSize.X, 0, 1)
end

local function fun5(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.ColorValueSlider
   local var95 = {}
   var95.LayoutOrder = var0.LayoutOrder
   var95.Size = var1.Size
   var95.Image = var1.GradientImage
   var95.ImageColor3 = Color3.fromHSV(var0.Hue, var0.Saturation, 1)
   var95.AutoButtonColor = false
   var1.Ref = arg1._rootRef
   var1.Event.MouseButton1Down = arg1.onMouseDown
   var1.Event.InputEnded = arg1.onInputEnded
   var1.Event.InputChanged = arg1.onInputChanged
   local var120 = {}
   local var124 = {}
   var124.Size = var1.PositionIndicatorSize
   var124.BackgroundTransparency = 1
   var124.Position = UDim2.fromScale(var0.Value, 0)
   var124.AnchorPoint = var1.PositionIndicatorAnchor
   var124.Image = var1.PositionIndicatorImage
   var124.ImageColor3 = var1.White
   var120.PositionIndicator = var1.createElement("ImageLabel", var124)
   return var1.createElement("ImageButton", var95, var120)
end

function var4.render(arg1)
   local var0 = arg1.props
   local var1 = var0.Stylizer.ColorValueSlider
   local var95 = {}
   var95.LayoutOrder = var0.LayoutOrder
   var95.Size = var1.Size
   var95.Image = var1.GradientImage
   var95.ImageColor3 = Color3.fromHSV(var0.Hue, var0.Saturation, 1)
   var95.AutoButtonColor = false
   var1.Ref = arg1._rootRef
   var1.Event.MouseButton1Down = arg1.onMouseDown
   var1.Event.InputEnded = arg1.onInputEnded
   var1.Event.InputChanged = arg1.onInputChanged
   local var120 = {}
   local var124 = {}
   var124.Size = var1.PositionIndicatorSize
   var124.BackgroundTransparency = 1
   var124.Position = UDim2.fromScale(var0.Value, 0)
   var124.AnchorPoint = var1.PositionIndicatorAnchor
   var124.Image = var1.PositionIndicatorImage
   var124.ImageColor3 = var1.White
   var120.PositionIndicator = var1.createElement("ImageLabel", var124)
   return var1.createElement("ImageButton", var95, var120)
end

fun5 = var3.withContext
local var136 = {}
var136.Analytics = var3.Analytics
var136.Stylizer = var2.Style.Stylizer
var4 = fun5(var136)(var4)
return var4
