-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.DragListener
local var5 = var1.PureComponent:extend("DragListenerArea")
function var5.init(arg1)
   local var180 = {}
   var180.Dragging = false
   arg1.state = var180
   function arg1.onMouseEnter()
      if arg1.props.Mouse then
         arg1.props.Mouse:__pushCursor(arg1.props.Cursor)
      end
   end
   
   function arg1.onMouseLeave()
      if arg1.props.Mouse then
         if not arg1.state.Dragging then
            arg1.props.Mouse:__popCursor()
         end
      end
   end
   
   function arg1.startDragging()
      if arg1.props.OnDragBegan then
         arg1.props.OnDragBegan()
      end
      local var209 = {}
      var209.Dragging = true
      arg1:setState(var209)
   end
   
   function arg1.onDragMoved(arg1)
      if arg1.props.OnDragMoved then
         local var217 = arg1.props
         var217 = arg1
         var217.OnDragMoved(var217)
      end
   end
   
end

function var5.didMount(arg1)
   local var0 = arg1.props.Mouse
   function arg1.stopDragging()
      if arg1.props.Mouse then
         arg1.props.Mouse:__pushCursor(arg1.props.Cursor)
      end
   end
   
end

function var5.willUnmount(arg1)
   arg1.props.Mouse:__resetCursor()
end

local function fun11(arg1)
   local var0 = arg1.props
   local var255 = {}
   var255.Size = var0.Size or UDim2.new(1, 0, 1, 0)
   var255.AnchorPoint = var0.AnchorPoint or Vector2.new()
   var255.ImageTransparency = 1
   var255.BackgroundTransparency = 1
   var1.Event.MouseEnter = arg1.onMouseEnter
   var1.Event.MouseLeave = arg1.onMouseLeave
   local var1 = arg1.startDragging
   var1.Event.MouseButton1Down = var1
   local var270 = {}
   var1 = arg1.state.Dragging
   if var1 then
      local var274 = {}
      var274.OnDragMoved = arg1.onDragMoved
      var274.OnDragEnded = arg1.stopDragging
      local var0 = var1.createElement(var4, var274)
   end
   var270.Target = var1
   return var1.createElement("ImageButton", var255, var270)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var255 = {}
   var255.Size = var0.Size or UDim2.new(1, 0, 1, 0)
   var255.AnchorPoint = var0.AnchorPoint or Vector2.new()
   var255.ImageTransparency = 1
   var255.BackgroundTransparency = 1
   var1.Event.MouseEnter = arg1.onMouseEnter
   var1.Event.MouseLeave = arg1.onMouseLeave
   local var1 = arg1.startDragging
   var1.Event.MouseButton1Down = var1
   local var270 = {}
   var1 = arg1.state.Dragging
   if var1 then
      local var274 = {}
      var274.OnDragMoved = arg1.onDragMoved
      var274.OnDragEnded = arg1.stopDragging
      local var0 = var1.createElement(var4, var274)
   end
   var270.Target = var1
   return var1.createElement("ImageButton", var255, var270)
end

fun11 = var3.withContext
local var279 = {}
var279.Mouse = var3.Mouse
var5 = fun11(var279)(var5)
return var5
