-- Generated with Unluau (https://github.com/valencefun/unluau)
local var0 = script:FindFirstAncestor("AnimationClipEditor")
local var1 = require(var0.Packages.Roact)
local var2 = require(var0.Packages.Framework)
local var3 = var2.ContextServices
local var4 = var2.UI.DragListener
local var5 = var1.PureComponent:extend("DragListenerArea")
function var5.init(arg1)
   local var229 = {}
   var229.Dragging = false
   arg1.state = var229
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
      local var258 = {}
      var258.Dragging = true
      arg1:setState(var258)
   end
   
   function arg1.onDragMoved(arg1)
      if arg1.props.OnDragMoved then
         local var266 = arg1.props
         var266 = arg1
         var266.OnDragMoved(var266)
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

local function fun13(arg1)
   local var0 = arg1.props
   local var304 = {}
   var304.Size = var0.Size or UDim2.new(1, 0, 1, 0)
   var304.AnchorPoint = var0.AnchorPoint or Vector2.new()
   var304.ImageTransparency = 1
   var304.BackgroundTransparency = 1
   var1.Event.MouseEnter = arg1.onMouseEnter
   var1.Event.MouseLeave = arg1.onMouseLeave
   local var1 = arg1.startDragging
   var1.Event.MouseButton1Down = var1
   local var319 = {}
   var1 = arg1.state.Dragging
   if var1 then
      local var323 = {}
      var323.OnDragMoved = arg1.onDragMoved
      var323.OnDragEnded = arg1.stopDragging
      local var0 = var1.createElement(var4, var323)
   end
   var319.Target = var1
   return var1.createElement("ImageButton", var304, var319)
end

function var5.render(arg1)
   local var0 = arg1.props
   local var304 = {}
   var304.Size = var0.Size or UDim2.new(1, 0, 1, 0)
   var304.AnchorPoint = var0.AnchorPoint or Vector2.new()
   var304.ImageTransparency = 1
   var304.BackgroundTransparency = 1
   var1.Event.MouseEnter = arg1.onMouseEnter
   var1.Event.MouseLeave = arg1.onMouseLeave
   local var1 = arg1.startDragging
   var1.Event.MouseButton1Down = var1
   local var319 = {}
   var1 = arg1.state.Dragging
   if var1 then
      local var323 = {}
      var323.OnDragMoved = arg1.onDragMoved
      var323.OnDragEnded = arg1.stopDragging
      local var0 = var1.createElement(var4, var323)
   end
   var319.Target = var1
   return var1.createElement("ImageButton", var304, var319)
end

fun13 = var3.withContext
local var328 = {}
var328.Mouse = var3.Mouse
var5 = fun13(var328)(var5)
return var5
